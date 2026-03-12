import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../core/constants/server_constants.dart';
import '../../../core/error/failure.dart';
import '../../../core/error/server_exception.dart';
import '../../../core/network/api_client.dart';
import '../../../init_dependencies.dart';
import '../model/inventory_item.dart';
import '../model/stock_level.dart';

part 'inventory_repository.g.dart';

@riverpod
InventoryRepository inventoryRepository(Ref ref) {
  return InventoryRepository(apiClient: serviceLocator<ApiClient>());
}

class InventoryRepository {
  final ApiClient apiClient;

  InventoryRepository({required this.apiClient});

  Future<Either<Failure, List<InventoryItem>>> getItems({
    required String storeId,
    bool activeOnly = true,
  }) async {
    try {
      final response = await apiClient.getList(
        ServerConstants.inventoryItems,
        queryParams: {
          'store_id': storeId,
          'active_only': activeOnly.toString(),
        },
      );
      return Right(response.map((e) => InventoryItem.fromJson(e)).toList());
    } on ServerException catch (e) {
      return Left(Failure(e.message));
    } catch (e) {
      return Left(Failure(e.toString()));
    }
  }

  Future<Either<Failure, List<StockLevel>>> getStockLevels({
    required String storeId,
  }) async {
    try {
      final response = await apiClient.getList(
        ServerConstants.inventoryStock,
        queryParams: {'store_id': storeId},
      );
      return Right(response.map((e) => StockLevel.fromJson(e)).toList());
    } on ServerException catch (e) {
      return Left(Failure(e.message));
    } catch (e) {
      return Left(Failure(e.toString()));
    }
  }

  Future<Either<Failure, List<InventoryItem>>> getOutOfStockItems({
    required String storeId,
  }) async {
    try {
      final response = await apiClient.getList(
        ServerConstants.inventoryOutOfStock,
        queryParams: {'store_id': storeId},
      );
      return Right(response.map((e) => InventoryItem.fromJson(e)).toList());
    } on ServerException catch (e) {
      return Left(Failure(e.message));
    } catch (e) {
      return Left(Failure(e.toString()));
    }
  }
}
