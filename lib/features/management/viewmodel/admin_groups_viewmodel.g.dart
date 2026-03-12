// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admin_groups_viewmodel.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(AdminGroupsViewModel)
const adminGroupsViewModelProvider = AdminGroupsViewModelProvider._();

final class AdminGroupsViewModelProvider
    extends
        $NotifierProvider<AdminGroupsViewModel, AsyncValue<List<AdminGroup>>> {
  const AdminGroupsViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'adminGroupsViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$adminGroupsViewModelHash();

  @$internal
  @override
  AdminGroupsViewModel create() => AdminGroupsViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AsyncValue<List<AdminGroup>> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AsyncValue<List<AdminGroup>>>(value),
    );
  }
}

String _$adminGroupsViewModelHash() =>
    r'dd01958aa8194ce2a5883543ae3c090908256319';

abstract class _$AdminGroupsViewModel
    extends $Notifier<AsyncValue<List<AdminGroup>>> {
  AsyncValue<List<AdminGroup>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref
            as $Ref<AsyncValue<List<AdminGroup>>, AsyncValue<List<AdminGroup>>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<List<AdminGroup>>,
                AsyncValue<List<AdminGroup>>
              >,
              AsyncValue<List<AdminGroup>>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
