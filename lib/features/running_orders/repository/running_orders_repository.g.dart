// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'running_orders_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(runningOrdersRepository)
const runningOrdersRepositoryProvider = RunningOrdersRepositoryProvider._();

final class RunningOrdersRepositoryProvider
    extends
        $FunctionalProvider<
          RunningOrdersRepository,
          RunningOrdersRepository,
          RunningOrdersRepository
        >
    with $Provider<RunningOrdersRepository> {
  const RunningOrdersRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'runningOrdersRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$runningOrdersRepositoryHash();

  @$internal
  @override
  $ProviderElement<RunningOrdersRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  RunningOrdersRepository create(Ref ref) {
    return runningOrdersRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(RunningOrdersRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<RunningOrdersRepository>(value),
    );
  }
}

String _$runningOrdersRepositoryHash() =>
    r'cbd2aa2dec1fc428cac3f5ce28f595f9486582e8';
