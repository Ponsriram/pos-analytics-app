// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'menu_viewmodel.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(MenuViewModel)
const menuViewModelProvider = MenuViewModelProvider._();

final class MenuViewModelProvider
    extends $NotifierProvider<MenuViewModel, AsyncValue<List<MenuItemModel>>> {
  const MenuViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'menuViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$menuViewModelHash();

  @$internal
  @override
  MenuViewModel create() => MenuViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AsyncValue<List<MenuItemModel>> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AsyncValue<List<MenuItemModel>>>(
        value,
      ),
    );
  }
}

String _$menuViewModelHash() => r'674eedff60229ac91b8f1d37ce77ad3a2b0aaedf';

abstract class _$MenuViewModel
    extends $Notifier<AsyncValue<List<MenuItemModel>>> {
  AsyncValue<List<MenuItemModel>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref
            as $Ref<
              AsyncValue<List<MenuItemModel>>,
              AsyncValue<List<MenuItemModel>>
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<List<MenuItemModel>>,
                AsyncValue<List<MenuItemModel>>
              >,
              AsyncValue<List<MenuItemModel>>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
