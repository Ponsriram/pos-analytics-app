import 'dart:developer';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../core/providers/selected_store_provider.dart';
import '../model/running_order.dart';
import '../repository/running_orders_repository.dart';

part 'running_orders_viewmodel.g.dart';

@riverpod
class RunningOrdersViewModel extends _$RunningOrdersViewModel {
  int _selectedTabIndex = 0;

  int get selectedTabIndex => _selectedTabIndex;

  @override
  AsyncValue<RunningOrdersSummary> build() {
    final selectedStore = ref.watch(selectedStoreProvider);
    if (selectedStore != null) {
      _loadRunningOrders(selectedStore.id);
      return const AsyncValue.loading();
    }

    return const AsyncValue.data(RunningOrdersSummary());
  }

  Future<void> _loadRunningOrders(String storeId) async {
    state = const AsyncValue.loading();

    final result = await ref
        .read(runningOrdersRepositoryProvider)
        .getRunningOrders(storeId: storeId);

    if (!ref.mounted) return;

    state = result.fold(
      (failure) {
        log('RunningOrdersViewModel: load failed: ${failure.message}');
        return AsyncValue.error(failure.message, StackTrace.current);
      },
      (summary) {
        log(
          'RunningOrdersViewModel: loaded ${summary.totalOrderCount} orders, ${summary.totalTableCount} tables',
        );
        return AsyncValue.data(summary);
      },
    );
  }

  void setSelectedTabIndex(int index) {
    _selectedTabIndex = index;
    ref.notifyListeners();
  }

  Future<void> refresh() async {
    final selectedStore = ref.read(selectedStoreProvider);
    if (selectedStore != null) {
      await _loadRunningOrders(selectedStore.id);
    }
  }
}
