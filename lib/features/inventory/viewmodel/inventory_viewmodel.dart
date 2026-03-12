import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../core/providers/selected_store_provider.dart';
import '../model/inventory_item.dart';
import '../repository/inventory_repository.dart';

part 'inventory_viewmodel.g.dart';

@riverpod
class InventoryViewModel extends _$InventoryViewModel {
  @override
  AsyncValue<List<InventoryItem>> build() {
    final selectedStore = ref.watch(selectedStoreProvider);
    if (selectedStore != null) {
      _loadItems(selectedStore.id);
    } else {
      state = const AsyncValue.data([]);
    }
    return const AsyncValue.loading();
  }

  Future<void> _loadItems(String storeId) async {
    state = const AsyncValue.loading();
    final repo = ref.read(inventoryRepositoryProvider);
    final result = await repo.getItems(storeId: storeId);
    state = result.fold(
      (failure) => AsyncValue.error(failure.message, StackTrace.current),
      (items) => AsyncValue.data(items),
    );
  }

  Future<void> refresh() async {
    final selectedStore = ref.read(selectedStoreProvider);
    if (selectedStore != null) {
      await _loadItems(selectedStore.id);
    }
  }
}

@riverpod
class OutOfStockViewModel extends _$OutOfStockViewModel {
  @override
  AsyncValue<List<InventoryItem>> build() {
    final selectedStore = ref.watch(selectedStoreProvider);
    if (selectedStore != null) {
      _loadOutOfStock(selectedStore.id);
    } else {
      state = const AsyncValue.data([]);
    }
    return const AsyncValue.loading();
  }

  Future<void> _loadOutOfStock(String storeId) async {
    state = const AsyncValue.loading();
    final repo = ref.read(inventoryRepositoryProvider);
    final result = await repo.getOutOfStockItems(storeId: storeId);
    state = result.fold(
      (failure) => AsyncValue.error(failure.message, StackTrace.current),
      (items) => AsyncValue.data(items),
    );
  }

  Future<void> refresh() async {
    final selectedStore = ref.read(selectedStoreProvider);
    if (selectedStore != null) {
      await _loadOutOfStock(selectedStore.id);
    }
  }
}
