// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_info_viewmodel.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(UserInfoViewModel)
const userInfoViewModelProvider = UserInfoViewModelProvider._();

final class UserInfoViewModelProvider
    extends $NotifierProvider<UserInfoViewModel, UserInfoState> {
  const UserInfoViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'userInfoViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$userInfoViewModelHash();

  @$internal
  @override
  UserInfoViewModel create() => UserInfoViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(UserInfoState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<UserInfoState>(value),
    );
  }
}

String _$userInfoViewModelHash() => r'4b9538c4c8b8d4b72c8854604c1ab33eefa2e84b';

abstract class _$UserInfoViewModel extends $Notifier<UserInfoState> {
  UserInfoState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<UserInfoState, UserInfoState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<UserInfoState, UserInfoState>,
              UserInfoState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
