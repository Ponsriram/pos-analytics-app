// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'running_orders_viewmodel.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(RunningOrdersViewModel)
const runningOrdersViewModelProvider = RunningOrdersViewModelProvider._();

final class RunningOrdersViewModelProvider
    extends
        $NotifierProvider<
          RunningOrdersViewModel,
          AsyncValue<RunningOrdersSummary>
        > {
  const RunningOrdersViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'runningOrdersViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$runningOrdersViewModelHash();

  @$internal
  @override
  RunningOrdersViewModel create() => RunningOrdersViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AsyncValue<RunningOrdersSummary> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AsyncValue<RunningOrdersSummary>>(
        value,
      ),
    );
  }
}

String _$runningOrdersViewModelHash() =>
    r'f347c9913675a66983ccde55e765af96838b3a7a';

abstract class _$RunningOrdersViewModel
    extends $Notifier<AsyncValue<RunningOrdersSummary>> {
  AsyncValue<RunningOrdersSummary> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref
            as $Ref<
              AsyncValue<RunningOrdersSummary>,
              AsyncValue<RunningOrdersSummary>
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<RunningOrdersSummary>,
                AsyncValue<RunningOrdersSummary>
              >,
              AsyncValue<RunningOrdersSummary>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
