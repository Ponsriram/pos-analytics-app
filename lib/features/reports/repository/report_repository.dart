import 'dart:developer';

import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../core/constants/server_constants.dart';
import '../../../core/error/failure.dart';
import '../../../core/error/server_exception.dart';
import '../../../core/network/api_client.dart';
import '../../../core/network/connection_checker.dart';
import '../../../init_dependencies.dart';
import '../model/day_close_report.dart';

part 'report_repository.g.dart';

@riverpod
ReportRepository reportRepository(Ref ref) {
  return ReportRepository(
    apiClient: serviceLocator<ApiClient>(),
    connectionChecker: serviceLocator<ConnectionChecker>(),
  );
}

class ReportRepository {
  final ApiClient apiClient;
  final ConnectionChecker connectionChecker;

  ReportRepository({required this.apiClient, required this.connectionChecker});

  Future<Either<Failure, List<Map<String, dynamic>>>> getReportTypes() async {
    log('ReportRepository: getReportTypes called');

    try {
      if (!await connectionChecker.isConnected) {
        return Left(Failure('No internet connection.'));
      }

      final response = await apiClient.getList(ServerConstants.reportTypes);

      log('ReportRepository: getReportTypes success (${response.length})');
      return Right(response.cast<Map<String, dynamic>>());
    } on ServerException catch (e) {
      return Left(Failure(e.message));
    } catch (e) {
      return Left(Failure('Failed to load report types: ${e.toString()}'));
    }
  }

  Future<Either<Failure, Map<String, dynamic>>> generateReport({
    required String templateCode,
    required String storeId,
    Map<String, dynamic>? params,
  }) async {
    log(
      'ReportRepository: generateReport called for template=$templateCode, store=$storeId',
    );

    try {
      if (!await connectionChecker.isConnected) {
        return Left(Failure('No internet connection.'));
      }

      final response = await apiClient.post(
        ServerConstants.reportGenerate,
        body: {
          'template_code': templateCode,
          'store_id': storeId,
          if (params != null) 'parameters': params,
        },
      );

      log('ReportRepository: generateReport success');
      return Right(response);
    } on ServerException catch (e) {
      return Left(Failure(e.message));
    } catch (e) {
      return Left(Failure('Failed to generate report: ${e.toString()}'));
    }
  }

  Future<Either<Failure, List<DayCloseReport>>> getDayCloseReports({
    required String storeId,
    String? startDate,
    String? endDate,
  }) async {
    log(
      'ReportRepository: getDayCloseReports called for store=$storeId, start=$startDate, end=$endDate',
    );

    try {
      if (!await connectionChecker.isConnected) {
        return Left(Failure('No internet connection.'));
      }

      final params = <String, String>{'store_id': storeId};
      if (startDate != null) params['start_date'] = startDate;
      if (endDate != null) params['end_date'] = endDate;

      final response = await apiClient.getList(
        ServerConstants.dayClose,
        queryParams: params,
      );

      log('ReportRepository: getDayCloseReports success (${response.length})');
      return Right(response.map((e) => DayCloseReport.fromJson(e)).toList());
    } on ServerException catch (e) {
      return Left(Failure(e.message));
    } catch (e) {
      return Left(Failure('Failed to load reports: ${e.toString()}'));
    }
  }
}
