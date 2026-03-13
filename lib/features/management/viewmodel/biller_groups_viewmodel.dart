import 'dart:developer';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../model/biller_group.dart';
import '../repository/management_repository.dart';

part 'biller_groups_viewmodel.g.dart';

@riverpod
class BillerGroupsViewModel extends _$BillerGroupsViewModel {
  @override
  AsyncValue<List<BillerGroup>> build() {
    _loadGroups();
    return const AsyncValue.loading();
  }

  Future<void> _loadGroups() async {
    state = const AsyncValue.loading();
    final result = await ref
        .read(managementRepositoryProvider)
        .getBillerGroups();

    if (!ref.mounted) return;

    state = result.fold(
      (failure) {
        log(
          'BillerGroupsViewModel: failed to load biller groups - ${failure.message}',
        );
        return AsyncValue.error(failure.message, StackTrace.current);
      },
      (groups) {
        log('BillerGroupsViewModel: loaded ${groups.length} biller group(s)');
        return AsyncValue.data(groups);
      },
    );
  }

  Future<void> refresh() async => _loadGroups();
}
