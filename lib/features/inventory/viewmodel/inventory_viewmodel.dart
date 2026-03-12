import 'dart:developer';

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
      return const AsyncValue.loading();
    }

    return const AsyncValue.data([]);
  }

  Future<void> _loadItems(String storeId) async {
    state = const AsyncValue.loading();

    final result = await ref
        .read(inventoryRepositoryProvider)
        .getItems(storeId: storeId);

    if (!ref.mounted) return;

    state = result.fold(
      (failure) {
        log('InventoryViewModel: load items failed: ${failure.message}');
        return AsyncValue.error(failure.message, StackTrace.current);
      },
      (items) {
        log('InventoryViewModel: loaded ${items.length} items');
        return AsyncValue.data(items);
      },
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
      return const AsyncValue.loading();
    }

    return const AsyncValue.data([]);
  }

  Future<void> _loadOutOfStock(String storeId) async {
    state = const AsyncValue.loading();

    final result = await ref
        .read(inventoryRepositoryProvider)
        .getOutOfStockItems(storeId: storeId);

    if (!ref.mounted) return;

    state = result.fold(
      (failure) {
        log('OutOfStockViewModel: load items failed: ${failure.message}');
        return AsyncValue.error(failure.message, StackTrace.current);
      },
      (items) {
        log('OutOfStockViewModel: loaded ${items.length} items');
        return AsyncValue.data(items);
      },
    );
  }

  Future<void> refresh() async {
    final selectedStore = ref.read(selectedStoreProvider);
    if (selectedStore != null) {
      await _loadOutOfStock(selectedStore.id);
    }
  }
}
