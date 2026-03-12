// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cloud_access_viewmodel.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(CloudAccessViewModel)
const cloudAccessViewModelProvider = CloudAccessViewModelProvider._();

final class CloudAccessViewModelProvider
    extends
        $NotifierProvider<CloudAccessViewModel, AsyncValue<CloudAccessConfig>> {
  const CloudAccessViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'cloudAccessViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$cloudAccessViewModelHash();

  @$internal
  @override
  CloudAccessViewModel create() => CloudAccessViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AsyncValue<CloudAccessConfig> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AsyncValue<CloudAccessConfig>>(
        value,
      ),
    );
  }
}

String _$cloudAccessViewModelHash() =>
    r'5313668ea43c6cbb0bd054dd5b6ad453a10c5ff2';

abstract class _$CloudAccessViewModel
    extends $Notifier<AsyncValue<CloudAccessConfig>> {
  AsyncValue<CloudAccessConfig> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref
            as $Ref<
              AsyncValue<CloudAccessConfig>,
              AsyncValue<CloudAccessConfig>
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<CloudAccessConfig>,
                AsyncValue<CloudAccessConfig>
              >,
              AsyncValue<CloudAccessConfig>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
