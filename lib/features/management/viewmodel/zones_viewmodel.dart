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
    final repo = ref.read(managementRepositoryProvider);
    final result = await repo.getDeliveryZones();
    state = result.fold(
      (failure) => AsyncValue.error(failure.message, StackTrace.current),
      (zones) => AsyncValue.data(zones),
    );
  }

  Future<void> refresh() async => _loadZones();
}
