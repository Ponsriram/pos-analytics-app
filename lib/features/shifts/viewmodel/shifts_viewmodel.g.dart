// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shifts_viewmodel.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ShiftsViewModel)
const shiftsViewModelProvider = ShiftsViewModelProvider._();

final class ShiftsViewModelProvider
    extends $NotifierProvider<ShiftsViewModel, AsyncValue<List<Shift>>> {
  const ShiftsViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'shiftsViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$shiftsViewModelHash();

  @$internal
  @override
  ShiftsViewModel create() => ShiftsViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AsyncValue<List<Shift>> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AsyncValue<List<Shift>>>(value),
    );
  }
}

String _$shiftsViewModelHash() => r'fe6859d24dc177d7834d1404559ee0015f945c18';

abstract class _$ShiftsViewModel extends $Notifier<AsyncValue<List<Shift>>> {
  AsyncValue<List<Shift>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref as $Ref<AsyncValue<List<Shift>>, AsyncValue<List<Shift>>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<Shift>>, AsyncValue<List<Shift>>>,
              AsyncValue<List<Shift>>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
