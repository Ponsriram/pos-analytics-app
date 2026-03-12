import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../core/constants/server_constants.dart';
import '../../../core/error/failure.dart';
import '../../../core/error/server_exception.dart';
import '../../../core/network/api_client.dart';
import '../../../init_dependencies.dart';
import '../model/running_order.dart';

part 'running_orders_repository.g.dart';

@riverpod
RunningOrdersRepository runningOrdersRepository(Ref ref) {
  return RunningOrdersRepository(apiClient: serviceLocator<ApiClient>());
}

class RunningOrdersRepository {
  final ApiClient apiClient;

  RunningOrdersRepository({required this.apiClient});

  Future<Either<Failure, RunningOrdersSummary>> getRunningOrders({
    required String storeId,
  }) async {
    try {
      // Fetch orders with active statuses
      final statuses = ['sent_to_kitchen', 'preparing', 'ready'];
      final allOrders = <Map<String, dynamic>>[];

      for (final status in statuses) {
        final response = await apiClient.getList(
          ServerConstants.orders,
          queryParams: {'store_id': storeId, 'status': status},
        );
        allOrders.addAll(response.cast<Map<String, dynamic>>());
      }

      // Compute summary client-side
      final summary = _buildSummary(allOrders);
      return Right(summary);
    } on ServerException catch (e) {
      return Left(Failure(e.message));
    } catch (e) {
      return Left(Failure(e.toString()));
    }
  }

  RunningOrdersSummary _buildSummary(List<Map<String, dynamic>> orders) {
    // Group by order_type
    final grouped = <String, List<Map<String, dynamic>>>{};
    for (final order in orders) {
      final type = (order['order_type'] as String?) ?? 'other';
      grouped.putIfAbsent(type, () => []).add(order);
    }

    final categories = grouped.entries.map((entry) {
      final name = _formatOrderType(entry.key);
      final orderCount = entry.value.length;
      final totalAmount = entry.value.fold<double>(
        0,
        (sum, o) => sum + ((o['net_amount'] as num?)?.toDouble() ?? 0),
      );
      return RunningOrderCategory(
        name: name,
        orderCount: orderCount,
        totalAmount: totalAmount,
        status: 'active',
      );
    }).toList();

    final totalOrderCount = orders.length;
    final tableNumbers = orders
        .map((o) => o['table_number'])
        .where((t) => t != null)
        .toSet();
    final totalTableCount = tableNumbers.length;
    final totalEstimatedAmount = orders.fold<double>(
      0,
      (sum, o) => sum + ((o['net_amount'] as num?)?.toDouble() ?? 0),
    );

    return RunningOrdersSummary(
      categories: categories,
      totalOrderCount: totalOrderCount,
      totalTableCount: totalTableCount,
      totalEstimatedAmount: totalEstimatedAmount,
    );
  }

  String _formatOrderType(String type) {
    switch (type) {
      case 'dine_in':
        return 'Dine In';
      case 'takeaway':
        return 'Take Away';
      case 'delivery':
        return 'Delivery';
      default:
        return type;
    }
  }
}
