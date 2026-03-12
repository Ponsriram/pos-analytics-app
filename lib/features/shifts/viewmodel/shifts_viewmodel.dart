import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../core/providers/selected_store_provider.dart';
import '../model/shift.dart';
import '../repository/shift_repository.dart';

part 'shifts_viewmodel.g.dart';

@riverpod
class ShiftsViewModel extends _$ShiftsViewModel {
  String? _statusFilter;

  String? get statusFilter => _statusFilter;

  @override
  AsyncValue<List<Shift>> build() {
    final selectedStore = ref.watch(selectedStoreProvider);
    if (selectedStore != null) {
      _loadShifts(selectedStore.id);
    } else {
      state = const AsyncValue.data([]);
    }
    return const AsyncValue.loading();
  }

  void setStatusFilter(String? status) {
    _statusFilter = status;
    final selectedStore = ref.read(selectedStoreProvider);
    if (selectedStore != null) {
      _loadShifts(selectedStore.id);
    }
  }

  Future<void> _loadShifts(String storeId) async {
    state = const AsyncValue.loading();
    final repo = ref.read(shiftRepositoryProvider);
    final result = await repo.getShifts(
      storeId: storeId,
      status: _statusFilter,
    );
    state = result.fold(
      (failure) => AsyncValue.error(failure.message, StackTrace.current),
      (shifts) => AsyncValue.data(shifts),
    );
  }

  Future<void> refresh() async {
    final selectedStore = ref.read(selectedStoreProvider);
    if (selectedStore != null) {
      await _loadShifts(selectedStore.id);
    }
  }
}
