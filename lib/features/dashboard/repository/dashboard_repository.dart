import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../core/constants/server_constants.dart';
import '../../../core/error/failure.dart';
import '../../../core/error/server_exception.dart';
import '../../../core/network/api_client.dart';
import '../../../init_dependencies.dart';
import '../model/dashboard_stats.dart';
import '../model/outlet_stats.dart';

part 'dashboard_repository.g.dart';

@riverpod
DashboardRepository dashboardRepository(Ref ref) {
  return DashboardRepository(apiClient: serviceLocator<ApiClient>());
}

class DashboardRepository {
  final ApiClient apiClient;

  DashboardRepository({required this.apiClient});

  /// Fetch paid orders for a store and compute stats client-side.
  Future<Either<Failure, DashboardStats>> getSummary({
    required String storeId,
    String? dateStr,
  }) async {
    try {
      final orders = await _fetchPaidOrders(storeId: storeId);
      final filtered = dateStr != null
          ? _filterByDate(orders, dateStr)
          : orders;
      return Right(_computeStats(filtered));
    } on ServerException catch (e) {
      return Left(Failure(e.message));
    } catch (e) {
      return Left(Failure(e.toString()));
    }
  }

  /// Fetch paid orders across all given stores, group by store, compute per-store stats.
  Future<Either<Failure, OutletAnalyticsResponse>> getSummaryByStore({
    String? dateStr,
    required Map<String, String> storeNames,
  }) async {
    try {
      // store_id is required by the API, so fetch per store and merge
      final allOrders = <Map<String, dynamic>>[];
      for (final storeId in storeNames.keys) {
        final storeOrders = await _fetchPaidOrders(storeId: storeId);
        allOrders.addAll(storeOrders);
      }
      final filtered = dateStr != null
          ? _filterByDate(allOrders, dateStr)
          : allOrders;

      // Group by store_id
      final grouped = <String, List<Map<String, dynamic>>>{};
      for (final o in filtered) {
        final sid = o['store_id'] as String? ?? '';
        grouped.putIfAbsent(sid, () => []).add(o);
      }

      final outlets = grouped.entries.map((e) {
        final stats = _computeStats(e.value);
        return OutletStats(
          storeId: e.key,
          storeName: storeNames[e.key] ?? e.key,
          totalRevenue: stats.totalRevenue,
          totalOrders: stats.totalOrders,
          taxCollected: stats.taxCollected,
          grossSales: stats.grossSales,
          netSales: stats.netSales,
          totalDiscounts: stats.totalDiscounts,
          paymentBreakdown: stats.paymentBreakdown,
        );
      }).toList();

      final totals = _computeStats(filtered);
      return Right(OutletAnalyticsResponse(outlets: outlets, totals: totals));
    } on ServerException catch (e) {
      return Left(Failure(e.message));
    } catch (e) {
      return Left(Failure(e.toString()));
    }
  }

  Future<List<Map<String, dynamic>>> _fetchPaidOrders({
    required String storeId,
  }) async {
    final allOrders = <Map<String, dynamic>>[];
    int offset = 0;
    const limit = 200;

    while (true) {
      final params = <String, String>{
        'store_id': storeId,
        'payment_status': 'completed',
        'limit': '$limit',
        'offset': '$offset',
      };

      final response = await apiClient.getList(
        ServerConstants.orders,
        queryParams: params,
      );
      final batch = response.cast<Map<String, dynamic>>();
      allOrders.addAll(batch);
      if (batch.length < limit) break;
      offset += limit;
    }

    return allOrders;
  }

  List<Map<String, dynamic>> _filterByDate(
    List<Map<String, dynamic>> orders,
    String dateStr,
  ) {
    return orders.where((o) {
      final createdAt = o['created_at'] as String?;
      if (createdAt == null) return false;
      return createdAt.startsWith(dateStr);
    }).toList();
  }

  DashboardStats _computeStats(List<Map<String, dynamic>> orders) {
    double grossSales = 0;
    double netSales = 0;
    double taxCollected = 0;
    double totalDiscounts = 0;
    final paymentBreakdown = <String, double>{};

    for (final o in orders) {
      grossSales += (o['gross_amount'] as num?)?.toDouble() ?? 0;
      netSales += (o['net_amount'] as num?)?.toDouble() ?? 0;
      taxCollected += (o['tax_amount'] as num?)?.toDouble() ?? 0;
      totalDiscounts += (o['discount_amount'] as num?)?.toDouble() ?? 0;
    }

    return DashboardStats(
      totalRevenue: netSales,
      totalOrders: orders.length,
      taxCollected: taxCollected,
      grossSales: grossSales,
      netSales: netSales,
      totalDiscounts: totalDiscounts,
      paymentBreakdown: paymentBreakdown,
    );
  }
}
