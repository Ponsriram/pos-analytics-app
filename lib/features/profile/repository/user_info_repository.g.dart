// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_info_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(userInfoRepository)
const userInfoRepositoryProvider = UserInfoRepositoryProvider._();

final class UserInfoRepositoryProvider
    extends
        $FunctionalProvider<
          UserInfoRepository,
          UserInfoRepository,
          UserInfoRepository
        >
    with $Provider<UserInfoRepository> {
  const UserInfoRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'userInfoRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$userInfoRepositoryHash();

  @$internal
  @override
  $ProviderElement<UserInfoRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  UserInfoRepository create(Ref ref) {
    return userInfoRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(UserInfoRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<UserInfoRepository>(value),
    );
  }
}

String _$userInfoRepositoryHash() =>
    r'921847c1ddb3b093b5cb0ca12b35fa6dc67eee8e';
