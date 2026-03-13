import 'dart:developer';

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
    final result = await ref
        .read(managementRepositoryProvider)
        .getCloudAccessConfig();

    if (!ref.mounted) return;

    state = result.fold(
      (failure) {
        log(
          'CloudAccessViewModel: failed to load cloud access config - ${failure.message}',
        );
        return AsyncValue.error(failure.message, StackTrace.current);
      },
      (config) {
        log('CloudAccessViewModel: cloud access config loaded');
        return AsyncValue.data(config);
      },
    );
  }

  Future<void> updateConfig(CloudAccessConfig config) async {
    state = const AsyncValue.loading();
    final result = await ref
        .read(managementRepositoryProvider)
        .updateCloudAccessConfig(config);

    if (!ref.mounted) return;

    state = result.fold(
      (failure) {
        log(
          'CloudAccessViewModel: failed to update cloud access config - ${failure.message}',
        );
        return AsyncValue.error(failure.message, StackTrace.current);
      },
      (updatedConfig) {
        log('CloudAccessViewModel: cloud access config updated');
        return AsyncValue.data(updatedConfig);
      },
    );
  }

  Future<void> refresh() async => _loadConfig();
}
