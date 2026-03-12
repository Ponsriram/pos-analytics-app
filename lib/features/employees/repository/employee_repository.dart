import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../core/constants/server_constants.dart';
import '../../../core/error/failure.dart';
import '../../../core/error/server_exception.dart';
import '../../../core/network/api_client.dart';
import '../../../init_dependencies.dart';
import '../model/employee.dart';

part 'employee_repository.g.dart';

@riverpod
EmployeeRepository employeeRepository(Ref ref) {
  return EmployeeRepository(apiClient: serviceLocator<ApiClient>());
}

class EmployeeRepository {
  final ApiClient apiClient;

  EmployeeRepository({required this.apiClient});

  Future<Either<Failure, List<Employee>>> getEmployees({
    required String storeId,
  }) async {
    try {
      final response = await apiClient.getList(
        ServerConstants.employees,
        queryParams: {'store_id': storeId},
      );
      return Right(response.map((e) => Employee.fromJson(e)).toList());
    } on ServerException catch (e) {
      return Left(Failure(e.message));
    } catch (e) {
      return Left(Failure(e.toString()));
    }
  }
}
