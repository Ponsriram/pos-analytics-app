import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../model/cloud_access_config.dart';
import '../repository/management_repository.dart';

part 'cloud_access_viewmodel.g.dart';

@riverpod
class CloudAccessViewModel extends _$CloudAccessViewModel {
  @override
  AsyncValue<CloudAccessConfig> build() {
    _loadConfig();
    return const AsyncValue.loading();
  }

  Future<void> _loadConfig() async {
    state = const AsyncValue.loading();
    final repo = ref.read(managementRepositoryProvider);
    final result = await repo.getCloudAccessConfig();
    state = result.fold(
      (failure) => AsyncValue.error(failure.message, StackTrace.current),
      (config) => AsyncValue.data(config),
    );
  }

  Future<void> updateConfig(CloudAccessConfig config) async {
    final repo = ref.read(managementRepositoryProvider);
    final result = await repo.updateCloudAccessConfig(config);
    state = result.fold(
      (failure) => AsyncValue.error(failure.message, StackTrace.current),
      (config) => AsyncValue.data(config),
    );
  }

  Future<void> refresh() async => _loadConfig();
}
