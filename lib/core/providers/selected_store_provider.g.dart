// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'selected_store_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// null means "All Outlets"

@ProviderFor(SelectedStoreNotifier)
const selectedStoreProvider = SelectedStoreNotifierProvider._();

/// null means "All Outlets"
final class SelectedStoreNotifierProvider
    extends $NotifierProvider<SelectedStoreNotifier, Store?> {
  /// null means "All Outlets"
  const SelectedStoreNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'selectedStoreProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$selectedStoreNotifierHash();

  @$internal
  @override
  SelectedStoreNotifier create() => SelectedStoreNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Store? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Store?>(value),
    );
  }
}

String _$selectedStoreNotifierHash() =>
    r'c207edaf55c7a88ebd254a62faee42897e65b683';

/// null means "All Outlets"

abstract class _$SelectedStoreNotifier extends $Notifier<Store?> {
  Store? build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<Store?, Store?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<Store?, Store?>,
              Store?,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
