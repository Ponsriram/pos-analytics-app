// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'management_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(managementRepository)
const managementRepositoryProvider = ManagementRepositoryProvider._();

final class ManagementRepositoryProvider
    extends
        $FunctionalProvider<
          ManagementRepository,
          ManagementRepository,
          ManagementRepository
        >
    with $Provider<ManagementRepository> {
  const ManagementRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'managementRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$managementRepositoryHash();

  @$internal
  @override
  $ProviderElement<ManagementRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  ManagementRepository create(Ref ref) {
    return managementRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ManagementRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ManagementRepository>(value),
    );
  }
}

String _$managementRepositoryHash() =>
    r'e6c9e32d8ef3bc61e68b019f76a75825efb2af69';
