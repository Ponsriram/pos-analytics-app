import 'dart:developer';

import 'package:intl/intl.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../core/providers/selected_store_provider.dart';
import '../model/day_close_report.dart';
import '../repository/report_repository.dart';

part 'reports_viewmodel.g.dart';

@riverpod
class ReportsViewModel extends _$ReportsViewModel {
  DateTime _startDate = DateTime.now().subtract(const Duration(days: 7));
  DateTime _endDate = DateTime.now();

  DateTime get startDate => _startDate;
  DateTime get endDate => _endDate;

  @override
  AsyncValue<List<DayCloseReport>> build() {
    final selectedStore = ref.watch(selectedStoreProvider);
    if (selectedStore != null) {
      Future.microtask(() => _loadReports(selectedStore.id));
      return const AsyncValue.loading();
    }

    return const AsyncValue.data([]);
  }

  void setDateRange(DateTime start, DateTime end) {
    _startDate = start;
    _endDate = end;
    final selectedStore = ref.read(selectedStoreProvider);
    if (selectedStore != null) {
      _loadReports(selectedStore.id);
    }
  }

  Future<void> _loadReports(String storeId) async {
    state = const AsyncValue.loading();
    final result = await ref
        .read(reportRepositoryProvider)
        .getDayCloseReports(
          storeId: storeId,
          startDate: DateFormat('yyyy-MM-dd').format(_startDate),
          endDate: DateFormat('yyyy-MM-dd').format(_endDate),
        );

    if (!ref.mounted) return;

    state = result.fold(
      (failure) {
        log(
          'ReportsViewModel: failed to load reports for store $storeId - ${failure.message}',
        );
        return AsyncValue.error(failure.message, StackTrace.current);
      },
      (reports) {
        log(
          'ReportsViewModel: loaded ${reports.length} report(s) for store $storeId',
        );
        return AsyncValue.data(reports);
      },
    );
  }

  Future<void> refresh() async {
    final selectedStore = ref.read(selectedStoreProvider);
    if (selectedStore != null) {
      await _loadReports(selectedStore.id);
    }
  }
}
