import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../core/constants/server_constants.dart';
import '../../../core/error/failure.dart';
import '../../../core/error/server_exception.dart';
import '../../../core/models/store.dart';
import '../../../core/network/api_client.dart';
import '../../../init_dependencies.dart';

part 'store_repository.g.dart';

@riverpod
StoreRepository storeRepository(Ref ref) {
  return StoreRepository(apiClient: serviceLocator<ApiClient>());
}

class StoreRepository {
  final ApiClient apiClient;

  StoreRepository({required this.apiClient});

  Future<Either<Failure, List<Store>>> getStores() async {
    try {
      final response = await apiClient.getList(ServerConstants.stores);
      return Right(response.map((e) => Store.fromJson(e)).toList());
    } on ServerException catch (e) {
      return Left(Failure(e.message));
    } catch (e) {
      return Left(Failure(e.toString()));
    }
  }

  Future<Either<Failure, Store>> getStore(String storeId) async {
    try {
      final response =
          await apiClient.get('${ServerConstants.stores}/$storeId');
      return Right(Store.fromJson(response));
    } on ServerException catch (e) {
      return Left(Failure(e.message));
    } catch (e) {
      return Left(Failure(e.toString()));
    }
  }
}
