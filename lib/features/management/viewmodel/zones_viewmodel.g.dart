// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'zones_viewmodel.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ZonesViewModel)
const zonesViewModelProvider = ZonesViewModelProvider._();

final class ZonesViewModelProvider
    extends $NotifierProvider<ZonesViewModel, AsyncValue<List<DeliveryZone>>> {
  const ZonesViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'zonesViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$zonesViewModelHash();

  @$internal
  @override
  ZonesViewModel create() => ZonesViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AsyncValue<List<DeliveryZone>> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AsyncValue<List<DeliveryZone>>>(
        value,
      ),
    );
  }
}

String _$zonesViewModelHash() => r'56e146ce9beab9f233d5c74ec17771075cc48c75';

abstract class _$ZonesViewModel
    extends $Notifier<AsyncValue<List<DeliveryZone>>> {
  AsyncValue<List<DeliveryZone>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref
            as $Ref<
              AsyncValue<List<DeliveryZone>>,
              AsyncValue<List<DeliveryZone>>
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<List<DeliveryZone>>,
                AsyncValue<List<DeliveryZone>>
              >,
              AsyncValue<List<DeliveryZone>>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
