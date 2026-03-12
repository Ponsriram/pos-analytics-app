// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_user_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(CurrentUserNotifier)
const currentUserProvider = CurrentUserNotifierProvider._();

final class CurrentUserNotifierProvider
    extends $NotifierProvider<CurrentUserNotifier, model.User?> {
  const CurrentUserNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'currentUserProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$currentUserNotifierHash();

  @$internal
  @override
  CurrentUserNotifier create() => CurrentUserNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(model.User? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<model.User?>(value),
    );
  }
}

String _$currentUserNotifierHash() =>
    r'f989ddf1217782907862d55874c723de4abb1798';

abstract class _$CurrentUserNotifier extends $Notifier<model.User?> {
  model.User? build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<model.User?, model.User?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<model.User?, model.User?>,
              model.User?,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
