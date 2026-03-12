// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reports_viewmodel.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ReportsViewModel)
const reportsViewModelProvider = ReportsViewModelProvider._();

final class ReportsViewModelProvider
    extends
        $NotifierProvider<ReportsViewModel, AsyncValue<List<DayCloseReport>>> {
  const ReportsViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'reportsViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$reportsViewModelHash();

  @$internal
  @override
  ReportsViewModel create() => ReportsViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AsyncValue<List<DayCloseReport>> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AsyncValue<List<DayCloseReport>>>(
        value,
      ),
    );
  }
}

String _$reportsViewModelHash() => r'c287ed1fc947c195c76a9bcbc58dbe1516107350';

abstract class _$ReportsViewModel
    extends $Notifier<AsyncValue<List<DayCloseReport>>> {
  AsyncValue<List<DayCloseReport>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref
            as $Ref<
              AsyncValue<List<DayCloseReport>>,
              AsyncValue<List<DayCloseReport>>
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<List<DayCloseReport>>,
                AsyncValue<List<DayCloseReport>>
              >,
              AsyncValue<List<DayCloseReport>>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
