// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inventory_viewmodel.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(InventoryViewModel)
const inventoryViewModelProvider = InventoryViewModelProvider._();

final class InventoryViewModelProvider
    extends
        $NotifierProvider<InventoryViewModel, AsyncValue<List<InventoryItem>>> {
  const InventoryViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'inventoryViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$inventoryViewModelHash();

  @$internal
  @override
  InventoryViewModel create() => InventoryViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AsyncValue<List<InventoryItem>> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AsyncValue<List<InventoryItem>>>(
        value,
      ),
    );
  }
}

String _$inventoryViewModelHash() =>
    r'3c2060f89a38489d15aa0c007eafe5fc729d16c5';

abstract class _$InventoryViewModel
    extends $Notifier<AsyncValue<List<InventoryItem>>> {
  AsyncValue<List<InventoryItem>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref
            as $Ref<
              AsyncValue<List<InventoryItem>>,
              AsyncValue<List<InventoryItem>>
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<List<InventoryItem>>,
                AsyncValue<List<InventoryItem>>
              >,
              AsyncValue<List<InventoryItem>>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

@ProviderFor(OutOfStockViewModel)
const outOfStockViewModelProvider = OutOfStockViewModelProvider._();

final class OutOfStockViewModelProvider
    extends
        $NotifierProvider<
          OutOfStockViewModel,
          AsyncValue<List<InventoryItem>>
        > {
  const OutOfStockViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'outOfStockViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$outOfStockViewModelHash();

  @$internal
  @override
  OutOfStockViewModel create() => OutOfStockViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AsyncValue<List<InventoryItem>> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AsyncValue<List<InventoryItem>>>(
        value,
      ),
    );
  }
}

String _$outOfStockViewModelHash() =>
    r'aa915ccf14778499eea0f749c4f090713be9e016';

abstract class _$OutOfStockViewModel
    extends $Notifier<AsyncValue<List<InventoryItem>>> {
  AsyncValue<List<InventoryItem>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref
            as $Ref<
              AsyncValue<List<InventoryItem>>,
              AsyncValue<List<InventoryItem>>
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<List<InventoryItem>>,
                AsyncValue<List<InventoryItem>>
              >,
              AsyncValue<List<InventoryItem>>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
