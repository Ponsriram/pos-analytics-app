// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stores_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(StoresNotifier)
const storesProvider = StoresNotifierProvider._();

final class StoresNotifierProvider
    extends $AsyncNotifierProvider<StoresNotifier, List<Store>> {
  const StoresNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'storesProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$storesNotifierHash();

  @$internal
  @override
  StoresNotifier create() => StoresNotifier();
}

String _$storesNotifierHash() => r'6014ca899c7d4383b2fd70a007dedbf676c6f936';

abstract class _$StoresNotifier extends $AsyncNotifier<List<Store>> {
  FutureOr<List<Store>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AsyncValue<List<Store>>, List<Store>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<Store>>, List<Store>>,
              AsyncValue<List<Store>>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
