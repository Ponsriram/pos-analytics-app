import 'package:intl/intl.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../core/providers/selected_store_provider.dart';
import '../../../core/providers/stores_provider.dart';
import '../model/dashboard_stats.dart';
import '../model/outlet_stats.dart';
import '../repository/dashboard_repository.dart';

part 'dashboard_viewmodel.g.dart';

@riverpod
class DashboardViewModel extends _$DashboardViewModel {
  DateTime _selectedDate = DateTime.now();
  int _activeStatsTab = 0;

  DateTime get selectedDate => _selectedDate;
  int get activeStatsTab => _activeStatsTab;

  @override
  AsyncValue<DashboardStats> build() {
    final selectedStore = ref.watch(selectedStoreProvider);
    final storesState = ref.watch(storesProvider);

    // Wait for stores to load before fetching dashboard data
    storesState.whenData((stores) {
      final storeNames = {for (final s in stores) s.id: s.name};
      _loadDashboard(storeId: selectedStore?.id, storeNames: storeNames);
    });

    return const AsyncValue.loading();
  }

  void setActiveStatsTab(int index) => _activeStatsTab = index;

  Future<void> setDate(DateTime date) async {
    _selectedDate = date;
    await refresh();
  }

  Future<void> _loadDashboard({
    String? storeId,
    required Map<String, String> storeNames,
  }) async {
    state = const AsyncValue.loading();
    final repo = ref.read(dashboardRepositoryProvider);
    final dateStr = DateFormat('yyyy-MM-dd').format(_selectedDate);

    if (storeId != null) {
      final result = await repo.getSummary(storeId: storeId, dateStr: dateStr);
      state = result.fold(
        (failure) => AsyncValue.error(failure.message, StackTrace.current),
        (stats) => AsyncValue.data(stats),
      );
    } else {
      if (storeNames.isEmpty) {
        state = const AsyncValue.data(DashboardStats());
        return;
      }
      final result = await repo.getSummaryByStore(
        dateStr: dateStr,
        storeNames: storeNames,
      );
      state = result.fold(
        (failure) => AsyncValue.error(failure.message, StackTrace.current),
        (response) => AsyncValue.data(response.totals),
      );
    }
  }

  Future<void> refresh() async {
    final selectedStore = ref.read(selectedStoreProvider);
    final storesState = ref.read(storesProvider);
    final storeNames =
        storesState.whenOrNull(
          data: (stores) => {for (final s in stores) s.id: s.name},
        ) ??
        {};
    await _loadDashboard(storeId: selectedStore?.id, storeNames: storeNames);
  }
}

@riverpod
class OutletStatsViewModel extends _$OutletStatsViewModel {
  @override
  AsyncValue<List<OutletStats>> build() {
    final storesState = ref.watch(storesProvider);

    storesState.whenData((stores) {
      final storeNames = {for (final s in stores) s.id: s.name};
      _loadOutletStats(storeNames);
    });

    return const AsyncValue.loading();
  }

  Future<void> _loadOutletStats(Map<String, String> storeNames) async {
    state = const AsyncValue.loading();
    final repo = ref.read(dashboardRepositoryProvider);
    final dateStr = DateFormat('yyyy-MM-dd').format(DateTime.now());

    if (storeNames.isEmpty) {
      state = const AsyncValue.data([]);
      return;
    }

    final result = await repo.getSummaryByStore(
      dateStr: dateStr,
      storeNames: storeNames,
    );
    state = result.fold(
      (failure) => AsyncValue.error(failure.message, StackTrace.current),
      (response) => AsyncValue.data(response.outlets),
    );
  }

  Future<void> refresh() async {
    final storesState = ref.read(storesProvider);
    final storeNames =
        storesState.whenOrNull(
          data: (stores) => {for (final s in stores) s.id: s.name},
        ) ??
        {};
    await _loadOutletStats(storeNames);
  }
}
