import 'dart:developer';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../model/admin_group.dart';
import '../repository/management_repository.dart';

part 'admin_groups_viewmodel.g.dart';

@riverpod
class AdminGroupsViewModel extends _$AdminGroupsViewModel {
  @override
  AsyncValue<List<AdminGroup>> build() {
    _loadGroups();
    return const AsyncValue.loading();
  }

  Future<void> _loadGroups() async {
    state = const AsyncValue.loading();
    final result = await ref
        .read(managementRepositoryProvider)
        .getAdminGroups();

    if (!ref.mounted) return;

    state = result.fold(
      (failure) {
        log(
          'AdminGroupsViewModel: failed to load admin groups - ${failure.message}',
        );
        return AsyncValue.error(failure.message, StackTrace.current);
      },
      (groups) {
        log('AdminGroupsViewModel: loaded ${groups.length} admin group(s)');
        return AsyncValue.data(groups);
      },
    );
  }

  Future<void> refresh() async => _loadGroups();
}
