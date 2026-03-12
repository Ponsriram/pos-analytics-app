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
    final repo = ref.read(managementRepositoryProvider);
    final result = await repo.getAdminGroups();
    state = result.fold(
      (failure) => AsyncValue.error(failure.message, StackTrace.current),
      (groups) => AsyncValue.data(groups),
    );
  }

  Future<void> refresh() async => _loadGroups();
}
