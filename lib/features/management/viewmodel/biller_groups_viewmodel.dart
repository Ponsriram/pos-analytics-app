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
    final repo = ref.read(managementRepositoryProvider);
    final result = await repo.getBillerGroups();
    state = result.fold(
      (failure) => AsyncValue.error(failure.message, StackTrace.current),
      (groups) => AsyncValue.data(groups),
    );
  }

  Future<void> refresh() async => _loadGroups();
}
