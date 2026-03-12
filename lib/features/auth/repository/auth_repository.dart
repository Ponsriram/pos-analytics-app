import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../core/constants/server_constants.dart';
import '../../../core/error/failure.dart';
import '../../../core/error/server_exception.dart';
import '../../../core/network/api_client.dart';
import '../../../init_dependencies.dart';
import '../model/auth_response.dart';

part 'auth_repository.g.dart';

@riverpod
AuthRepository authRepository(Ref ref) {
  return AuthRepository(apiClient: serviceLocator<ApiClient>());
}

class AuthRepository {
  final ApiClient apiClient;

  AuthRepository({required this.apiClient});

  Future<Either<Failure, AuthResponse>> login({
    required String email,
    required String password,
  }) async {
    try {
      final response = await apiClient.post(
        ServerConstants.login,
        body: {'email': email, 'password': password},
      );
      return Right(AuthResponse.fromJson(response));
    } on ServerException catch (e) {
      return Left(Failure(e.message));
    } catch (e) {
      return Left(Failure('Login failed: ${e.toString()}'));
    }
  }
}
