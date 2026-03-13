import 'dart:developer';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../core/providers/selected_store_provider.dart';
import '../model/online_order_model.dart';
import '../repository/online_orders_repository.dart';

part 'online_orders_viewmodel.g.dart';

@riverpod
class OnlineOrdersViewModel extends _$OnlineOrdersViewModel {
  String? _selectedChannel;
  String? _selectedStatus;

  String? get selectedChannel => _selectedChannel;
  String? get selectedStatus => _selectedStatus;

  List<String> get channels => const ['All', 'online', 'aggregator'];

  @override
  AsyncValue<List<OnlineOrderModel>> build() {
    final selectedStore = ref.watch(selectedStoreProvider);
    if (selectedStore != null) {
      _loadOrders(selectedStore.id);
    } else {
      state = const AsyncValue.data([]);
    }
    return const AsyncValue.loading();
  }

  Future<void> _loadOrders(String storeId) async {
    state = const AsyncValue.loading();
    final result = await ref
        .read(onlineOrdersRepositoryProvider)
        .getOnlineOrders(
          storeId: storeId,
          channel: _selectedChannel,
          status: _selectedStatus,
        );

    if (!ref.mounted) return;

    state = result.fold(
      (failure) {
        log(
          'OnlineOrdersViewModel: failed to load online orders for store $storeId - ${failure.message}',
        );
        return AsyncValue.error(failure.message, StackTrace.current);
      },
      (orders) {
        log(
          'OnlineOrdersViewModel: loaded ${orders.length} online order(s) for store $storeId',
        );
        return AsyncValue.data(orders);
      },
    );
  }

  void setSelectedChannel(String? channel) {
    _selectedChannel = channel;
    final selectedStore = ref.read(selectedStoreProvider);
    if (selectedStore != null) {
      _loadOrders(selectedStore.id);
    }
  }

  void setSelectedStatus(String? status) {
    _selectedStatus = status;
    final selectedStore = ref.read(selectedStoreProvider);
    if (selectedStore != null) {
      _loadOrders(selectedStore.id);
    }
  }

  Future<void> refresh() async {
    final selectedStore = ref.read(selectedStoreProvider);
    if (selectedStore != null) {
      await _loadOrders(selectedStore.id);
    }
  }
}
