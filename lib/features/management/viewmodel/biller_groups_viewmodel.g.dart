// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'biller_groups_viewmodel.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(BillerGroupsViewModel)
const billerGroupsViewModelProvider = BillerGroupsViewModelProvider._();

final class BillerGroupsViewModelProvider
    extends
        $NotifierProvider<
          BillerGroupsViewModel,
          AsyncValue<List<BillerGroup>>
        > {
  const BillerGroupsViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'billerGroupsViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$billerGroupsViewModelHash();

  @$internal
  @override
  BillerGroupsViewModel create() => BillerGroupsViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AsyncValue<List<BillerGroup>> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AsyncValue<List<BillerGroup>>>(
        value,
      ),
    );
  }
}

String _$billerGroupsViewModelHash() =>
    r'69ccbff321f784f1a3eee8f0259bf78cc091c214';

abstract class _$BillerGroupsViewModel
    extends $Notifier<AsyncValue<List<BillerGroup>>> {
  AsyncValue<List<BillerGroup>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref
            as $Ref<
              AsyncValue<List<BillerGroup>>,
              AsyncValue<List<BillerGroup>>
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<List<BillerGroup>>,
                AsyncValue<List<BillerGroup>>
              >,
              AsyncValue<List<BillerGroup>>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
