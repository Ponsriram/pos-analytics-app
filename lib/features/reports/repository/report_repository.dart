import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../core/constants/server_constants.dart';
import '../../../core/error/failure.dart';
import '../../../core/error/server_exception.dart';
import '../../../core/network/api_client.dart';
import '../../../init_dependencies.dart';
import '../model/day_close_report.dart';

part 'report_repository.g.dart';

@riverpod
ReportRepository reportRepository(Ref ref) {
  return ReportRepository(apiClient: serviceLocator<ApiClient>());
}

class ReportRepository {
  final ApiClient apiClient;

  ReportRepository({required this.apiClient});

  Future<Either<Failure, List<Map<String, dynamic>>>> getReportTypes() async {
    try {
      final response = await apiClient.getList(ServerConstants.reportTypes);
      return Right(response.cast<Map<String, dynamic>>());
    } on ServerException catch (e) {
      return Left(Failure(e.message));
    } catch (e) {
      return Left(Failure(e.toString()));
    }
  }

  Future<Either<Failure, Map<String, dynamic>>> generateReport({
    required String templateCode,
    required String storeId,
    Map<String, dynamic>? params,
  }) async {
    try {
      final response = await apiClient.post(
        ServerConstants.reportGenerate,
        body: {
          'template_code': templateCode,
          'store_id': storeId,
          if (params != null) 'parameters': params,
        },
      );
      return Right(response);
    } on ServerException catch (e) {
      return Left(Failure(e.message));
    } catch (e) {
      return Left(Failure(e.toString()));
    }
  }

  Future<Either<Failure, List<DayCloseReport>>> getDayCloseReports({
    required String storeId,
    String? startDate,
    String? endDate,
  }) async {
    try {
      final params = <String, String>{'store_id': storeId};
      if (startDate != null) params['start_date'] = startDate;
      if (endDate != null) params['end_date'] = endDate;

      final response = await apiClient.getList(
        ServerConstants.dayClose,
        queryParams: params,
      );
      return Right(response.map((e) => DayCloseReport.fromJson(e)).toList());
    } on ServerException catch (e) {
      return Left(Failure(e.message));
    } catch (e) {
      return Left(Failure(e.toString()));
    }
  }
}
