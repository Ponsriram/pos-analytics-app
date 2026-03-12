// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dashboard_viewmodel.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(DashboardViewModel)
const dashboardViewModelProvider = DashboardViewModelProvider._();

final class DashboardViewModelProvider
    extends $NotifierProvider<DashboardViewModel, AsyncValue<DashboardStats>> {
  const DashboardViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'dashboardViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$dashboardViewModelHash();

  @$internal
  @override
  DashboardViewModel create() => DashboardViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AsyncValue<DashboardStats> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AsyncValue<DashboardStats>>(value),
    );
  }
}

String _$dashboardViewModelHash() =>
    r'ad15aba8519105543457896d2e271744ef76a18e';

abstract class _$DashboardViewModel
    extends $Notifier<AsyncValue<DashboardStats>> {
  AsyncValue<DashboardStats> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref
            as $Ref<AsyncValue<DashboardStats>, AsyncValue<DashboardStats>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<DashboardStats>,
                AsyncValue<DashboardStats>
              >,
              AsyncValue<DashboardStats>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

@ProviderFor(OutletStatsViewModel)
const outletStatsViewModelProvider = OutletStatsViewModelProvider._();

final class OutletStatsViewModelProvider
    extends
        $NotifierProvider<OutletStatsViewModel, AsyncValue<List<OutletStats>>> {
  const OutletStatsViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'outletStatsViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$outletStatsViewModelHash();

  @$internal
  @override
  OutletStatsViewModel create() => OutletStatsViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AsyncValue<List<OutletStats>> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AsyncValue<List<OutletStats>>>(
        value,
      ),
    );
  }
}

String _$outletStatsViewModelHash() =>
    r'b4d70d969822626f090f034adb8b0637ce17cc2d';

abstract class _$OutletStatsViewModel
    extends $Notifier<AsyncValue<List<OutletStats>>> {
  AsyncValue<List<OutletStats>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref
            as $Ref<
              AsyncValue<List<OutletStats>>,
              AsyncValue<List<OutletStats>>
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<List<OutletStats>>,
                AsyncValue<List<OutletStats>>
              >,
              AsyncValue<List<OutletStats>>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
