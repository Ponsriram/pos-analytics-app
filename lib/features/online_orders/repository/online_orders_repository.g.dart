// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'online_orders_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(onlineOrdersRepository)
const onlineOrdersRepositoryProvider = OnlineOrdersRepositoryProvider._();

final class OnlineOrdersRepositoryProvider
    extends
        $FunctionalProvider<
          OnlineOrdersRepository,
          OnlineOrdersRepository,
          OnlineOrdersRepository
        >
    with $Provider<OnlineOrdersRepository> {
  const OnlineOrdersRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'onlineOrdersRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$onlineOrdersRepositoryHash();

  @$internal
  @override
  $ProviderElement<OnlineOrdersRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  OnlineOrdersRepository create(Ref ref) {
    return onlineOrdersRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(OnlineOrdersRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<OnlineOrdersRepository>(value),
    );
  }
}

String _$onlineOrdersRepositoryHash() =>
    r'3d408c001eb83584e07cbb34e2b3436a46c27e83';
