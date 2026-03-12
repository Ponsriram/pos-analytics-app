// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'online_orders_viewmodel.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(OnlineOrdersViewModel)
const onlineOrdersViewModelProvider = OnlineOrdersViewModelProvider._();

final class OnlineOrdersViewModelProvider
    extends
        $NotifierProvider<
          OnlineOrdersViewModel,
          AsyncValue<List<OnlineOrderModel>>
        > {
  const OnlineOrdersViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'onlineOrdersViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$onlineOrdersViewModelHash();

  @$internal
  @override
  OnlineOrdersViewModel create() => OnlineOrdersViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AsyncValue<List<OnlineOrderModel>> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AsyncValue<List<OnlineOrderModel>>>(
        value,
      ),
    );
  }
}

String _$onlineOrdersViewModelHash() =>
    r'1c2a0f3ed79249e88540b749ca0d9b897910b843';

abstract class _$OnlineOrdersViewModel
    extends $Notifier<AsyncValue<List<OnlineOrderModel>>> {
  AsyncValue<List<OnlineOrderModel>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref
            as $Ref<
              AsyncValue<List<OnlineOrderModel>>,
              AsyncValue<List<OnlineOrderModel>>
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<List<OnlineOrderModel>>,
                AsyncValue<List<OnlineOrderModel>>
              >,
              AsyncValue<List<OnlineOrderModel>>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
