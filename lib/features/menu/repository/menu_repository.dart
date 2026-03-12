import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../core/constants/server_constants.dart';
import '../../../core/error/failure.dart';
import '../../../core/error/server_exception.dart';
import '../../../core/network/api_client.dart';
import '../../../init_dependencies.dart';
import '../model/menu_item_model.dart';

part 'menu_repository.g.dart';

@riverpod
MenuRepository menuRepository(Ref ref) {
  return MenuRepository(apiClient: serviceLocator<ApiClient>());
}

class MenuRepository {
  final ApiClient apiClient;

  MenuRepository({required this.apiClient});

  Future<Either<Failure, List<MenuItemModel>>> getMenuItems({
    required String storeId,
    String? categoryId,
  }) async {
    try {
      final params = <String, String>{'store_id': storeId};
      if (categoryId != null) params['category_id'] = categoryId;

      final response = await apiClient.getList(
        ServerConstants.products,
        queryParams: params,
      );
      return Right(response.map((e) => MenuItemModel.fromJson(e)).toList());
    } on ServerException catch (e) {
      return Left(Failure(e.message));
    } catch (e) {
      return Left(Failure(e.toString()));
    }
  }

  Future<Either<Failure, List<String>>> getCategories({
    required String storeId,
  }) async {
    try {
      final response = await apiClient.getList(
        ServerConstants.categories,
        queryParams: {'store_id': storeId},
      );
      return Right(response.map((e) => e['name'] as String).toList());
    } on ServerException catch (e) {
      return Left(Failure(e.message));
    } catch (e) {
      return Left(Failure(e.toString()));
    }
  }
}
