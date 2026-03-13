import 'dart:async';
import 'dart:developer';

import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/constants/server_constants.dart';
import '../../../core/error/failure.dart';
import '../../../core/error/server_exception.dart';
import '../../../core/network/api_client.dart';
import '../../../core/network/connection_checker.dart';
import '../../../init_dependencies.dart';
import '../model/user_info_model.dart';

part 'user_info_repository.g.dart';

@riverpod
UserInfoRepository userInfoRepository(Ref ref) {
  return UserInfoRepository(
    apiClient: serviceLocator<ApiClient>(),
    connectionChecker: serviceLocator<ConnectionChecker>(),
  );
}

class UserInfoRepository {
  final ApiClient apiClient;
  final ConnectionChecker connectionChecker;

  UserInfoRepository({
    required this.apiClient,
    required this.connectionChecker,
  });

  Future<Either<Failure, UserInfoModel>> getUserInfo() async {
    log('UserInfoRepository: getUserInfo called');

    try {
      if (!await connectionChecker.isConnected) {
        return Left(Failure('No internet connection.'));
      }

      final response = await apiClient
          .get(ServerConstants.userProfile)
          .timeout(const Duration(seconds: 15));

      final userInfo = UserInfoModel.fromJson(response);
      log('UserInfoRepository: getUserInfo success for ${userInfo.id}');

      return Right(userInfo);
    } on TimeoutException {
      return Left(
        Failure(
          'Profile request timed out. Please check the server and network.',
        ),
      );
    } on ServerException catch (e) {
      return Left(Failure(e.message));
    } catch (e) {
      return Left(Failure('Failed to load profile: ${e.toString()}'));
    }
  }
}
