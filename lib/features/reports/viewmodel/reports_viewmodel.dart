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
      _loadReports(selectedStore.id);
    } else {
      state = const AsyncValue.data([]);
    }
    return const AsyncValue.loading();
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
    final repo = ref.read(reportRepositoryProvider);
    final result = await repo.getDayCloseReports(
      storeId: storeId,
      startDate: DateFormat('yyyy-MM-dd').format(_startDate),
      endDate: DateFormat('yyyy-MM-dd').format(_endDate),
    );
    state = result.fold(
      (failure) => AsyncValue.error(failure.message, StackTrace.current),
      (reports) => AsyncValue.data(reports),
    );
  }

  Future<void> refresh() async {
    final selectedStore = ref.read(selectedStoreProvider);
    if (selectedStore != null) {
      await _loadReports(selectedStore.id);
    }
  }
}
