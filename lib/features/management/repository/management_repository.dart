import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../core/constants/server_constants.dart';
import '../../../core/error/failure.dart';
import '../../../core/error/server_exception.dart';
import '../../../core/network/api_client.dart';
import '../../../init_dependencies.dart';
import '../model/admin_group.dart';
import '../model/biller_group.dart';
import '../model/cloud_access_config.dart';
import '../model/delivery_zone.dart';

part 'management_repository.g.dart';

@riverpod
ManagementRepository managementRepository(Ref ref) {
  return ManagementRepository(apiClient: serviceLocator<ApiClient>());
}

class ManagementRepository {
  final ApiClient apiClient;

  ManagementRepository({required this.apiClient});

  Future<Either<Failure, List<AdminGroup>>> getAdminGroups() async {
    try {
      final response = await apiClient.getList(
        ServerConstants.groups,
        queryParams: {'group_type': 'admin'},
      );
      final list = response
          .map((e) => AdminGroup.fromJson(e as Map<String, dynamic>))
          .toList();
      return Right(list);
    } on ServerException catch (e) {
      return Left(Failure(e.message));
    } catch (e) {
      return Left(Failure(e.toString()));
    }
  }

  Future<Either<Failure, List<BillerGroup>>> getBillerGroups() async {
    try {
      final response = await apiClient.getList(
        ServerConstants.groups,
        queryParams: {'group_type': 'biller'},
      );
      final list = response
          .map((e) => BillerGroup.fromJson(e as Map<String, dynamic>))
          .toList();
      return Right(list);
    } on ServerException catch (e) {
      return Left(Failure(e.message));
    } catch (e) {
      return Left(Failure(e.toString()));
    }
  }

  Future<Either<Failure, List<DeliveryZone>>> getDeliveryZones() async {
    try {
      final response = await apiClient.getList(
        ServerConstants.zones,
        queryParams: {'is_active': 'true'},
      );
      final list = response
          .map((e) => DeliveryZone.fromJson(e as Map<String, dynamic>))
          .toList();
      return Right(list);
    } on ServerException catch (e) {
      return Left(Failure(e.message));
    } catch (e) {
      return Left(Failure(e.toString()));
    }
  }

  // Cloud access has no backend endpoint — returns default config
  Future<Either<Failure, CloudAccessConfig>> getCloudAccessConfig() async {
    return const Right(CloudAccessConfig());
  }

  Future<Either<Failure, CloudAccessConfig>> updateCloudAccessConfig(
    CloudAccessConfig config,
  ) async {
    return Right(config);
  }
}
