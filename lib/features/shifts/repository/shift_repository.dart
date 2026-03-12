import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../core/constants/server_constants.dart';
import '../../../core/error/failure.dart';
import '../../../core/error/server_exception.dart';
import '../../../core/network/api_client.dart';
import '../../../init_dependencies.dart';
import '../model/shift.dart';

part 'shift_repository.g.dart';

@riverpod
ShiftRepository shiftRepository(Ref ref) {
  return ShiftRepository(apiClient: serviceLocator<ApiClient>());
}

class ShiftRepository {
  final ApiClient apiClient;

  ShiftRepository({required this.apiClient});

  Future<Either<Failure, List<Shift>>> getShifts({
    required String storeId,
    String? status,
  }) async {
    try {
      final params = <String, String>{'store_id': storeId};
      if (status != null) params['status'] = status;

      final response = await apiClient.getList(
        ServerConstants.shifts,
        queryParams: params,
      );
      return Right(response.map((e) => Shift.fromJson(e)).toList());
    } on ServerException catch (e) {
      return Left(Failure(e.message));
    } catch (e) {
      return Left(Failure(e.toString()));
    }
  }

  Future<Either<Failure, Shift>> getShift(String shiftId) async {
    try {
      final response =
          await apiClient.get('${ServerConstants.shifts}/$shiftId');
      return Right(Shift.fromJson(response));
    } on ServerException catch (e) {
      return Left(Failure(e.message));
    } catch (e) {
      return Left(Failure(e.toString()));
    }
  }
}
