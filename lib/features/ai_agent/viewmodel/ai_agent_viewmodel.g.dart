// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ai_agent_viewmodel.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(AiAgentViewModel)
const aiAgentViewModelProvider = AiAgentViewModelProvider._();

final class AiAgentViewModelProvider
    extends $AsyncNotifierProvider<AiAgentViewModel, AiAgentState> {
  const AiAgentViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'aiAgentViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$aiAgentViewModelHash();

  @$internal
  @override
  AiAgentViewModel create() => AiAgentViewModel();
}

String _$aiAgentViewModelHash() => r'cf13ab4e7d7d8c4d3e0487d5662d823254f48154';

abstract class _$AiAgentViewModel extends $AsyncNotifier<AiAgentState> {
  FutureOr<AiAgentState> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AsyncValue<AiAgentState>, AiAgentState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<AiAgentState>, AiAgentState>,
              AsyncValue<AiAgentState>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
