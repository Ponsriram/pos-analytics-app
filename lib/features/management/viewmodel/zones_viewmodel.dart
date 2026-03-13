import 'dart:developer';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../model/delivery_zone.dart';
import '../repository/management_repository.dart';

part 'zones_viewmodel.g.dart';

@riverpod
class ZonesViewModel extends _$ZonesViewModel {
  @override
  AsyncValue<List<DeliveryZone>> build() {
    _loadZones();
    return const AsyncValue.loading();
  }

  Future<void> _loadZones() async {
    state = const AsyncValue.loading();
    final result = await ref
        .read(managementRepositoryProvider)
        .getDeliveryZones();

    if (!ref.mounted) return;

    state = result.fold(
      (failure) {
        log('ZonesViewModel: failed to load zones - ${failure.message}');
        return AsyncValue.error(failure.message, StackTrace.current);
      },
      (zones) {
        log('ZonesViewModel: loaded ${zones.length} zone(s)');
        return AsyncValue.data(zones);
      },
    );
  }

  Future<void> refresh() async => _loadZones();
}
