import 'dart:developer';

import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/constants/server_constants.dart';
import '../../../core/error/failure.dart';
import '../../../core/error/server_exception.dart';
import '../../../core/network/api_client.dart';
import '../../../core/network/connection_checker.dart';
import '../../../init_dependencies.dart';
import '../model/auth_response.dart';

part 'auth_repository.g.dart';

@riverpod
AuthRepository authRepository(Ref ref) {
  return AuthRepository(
    apiClient: serviceLocator<ApiClient>(),
    connectionChecker: serviceLocator<ConnectionChecker>(),
  );
}

class AuthRepository {
  final ApiClient apiClient;
  final ConnectionChecker connectionChecker;

  AuthRepository({required this.apiClient, required this.connectionChecker});

  /// Login with email and password.
  Future<Either<Failure, AuthResponse>> login({
    required String email,
    required String password,
  }) async {
    log('AuthRepository: login called for $email');

    try {
      if (!await connectionChecker.isConnected) {
        return Left(Failure('No internet connection.'));
      }

      final response = await apiClient.post(
        ServerConstants.login,
        body: {'email': email, 'password': password},
      );

      final authResponse = AuthResponse.fromJson(response);

      log('AuthRepository: login successful for ${authResponse.user.id}');
      return Right(authResponse);
    } on ServerException catch (e) {
      return Left(Failure(e.message));
    } catch (e) {
      return Left(Failure('Login failed: ${e.toString()}'));
    }
  }
}
