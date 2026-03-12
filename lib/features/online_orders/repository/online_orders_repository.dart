import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../core/constants/server_constants.dart';
import '../../../core/error/failure.dart';
import '../../../core/error/server_exception.dart';
import '../../../core/network/api_client.dart';
import '../../../init_dependencies.dart';
import '../model/online_order_model.dart';

part 'online_orders_repository.g.dart';

@riverpod
OnlineOrdersRepository onlineOrdersRepository(Ref ref) {
  return OnlineOrdersRepository(apiClient: serviceLocator<ApiClient>());
}

class OnlineOrdersRepository {
  final ApiClient apiClient;

  OnlineOrdersRepository({required this.apiClient});

  Future<Either<Failure, List<OnlineOrderModel>>> getOnlineOrders({
    required String storeId,
    String? channel,
    String? status,
  }) async {
    try {
      final allOrders = <OnlineOrderModel>[];

      if (channel != null) {
        // Fetch a specific channel only
        final params = <String, String>{
          'store_id': storeId,
          'channel': channel,
        };
        if (status != null) params['status'] = status;
        final response = await apiClient.getList(
          ServerConstants.orders,
          queryParams: params,
        );
        allOrders.addAll(
          response
              .map((e) => OnlineOrderModel.fromJson(e as Map<String, dynamic>))
              .toList(),
        );
      } else {
        // Fetch both online and aggregator channels
        for (final ch in ['online', 'aggregator']) {
          final params = <String, String>{'store_id': storeId, 'channel': ch};
          if (status != null) params['status'] = status;
          final response = await apiClient.getList(
            ServerConstants.orders,
            queryParams: params,
          );
          allOrders.addAll(
            response
                .map(
                  (e) => OnlineOrderModel.fromJson(e as Map<String, dynamic>),
                )
                .toList(),
          );
        }
      }

      // Sort by created_at descending
      allOrders.sort((a, b) {
        final aDate = a.createdAt ?? DateTime(2000);
        final bDate = b.createdAt ?? DateTime(2000);
        return bDate.compareTo(aDate);
      });

      return Right(allOrders);
    } on ServerException catch (e) {
      return Left(Failure(e.message));
    } catch (e) {
      return Left(Failure(e.toString()));
    }
  }
}
