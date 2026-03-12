import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../core/providers/selected_store_provider.dart';
import '../model/employee.dart';
import '../repository/employee_repository.dart';

part 'employees_viewmodel.g.dart';

@riverpod
class EmployeesViewModel extends _$EmployeesViewModel {
  String _searchQuery = '';

  String get searchQuery => _searchQuery;

  @override
  AsyncValue<List<Employee>> build() {
    final selectedStore = ref.watch(selectedStoreProvider);
    if (selectedStore != null) {
      _loadEmployees(selectedStore.id);
    } else {
      state = const AsyncValue.data([]);
    }
    return const AsyncValue.loading();
  }

  void setSearchQuery(String query) {
    _searchQuery = query;
    // Trigger rebuild to re-filter
    ref.invalidateSelf();
  }

  Future<void> _loadEmployees(String storeId) async {
    state = const AsyncValue.loading();
    final repo = ref.read(employeeRepositoryProvider);
    final result = await repo.getEmployees(storeId: storeId);
    state = result.fold(
      (failure) => AsyncValue.error(failure.message, StackTrace.current),
      (employees) {
        if (_searchQuery.isEmpty) return AsyncValue.data(employees);
        final query = _searchQuery.toLowerCase();
        return AsyncValue.data(employees.where((e) {
          return e.name.toLowerCase().contains(query) ||
              e.role.toLowerCase().contains(query) ||
              (e.phone?.contains(query) ?? false);
        }).toList());
      },
    );
  }

  Future<void> refresh() async {
    final selectedStore = ref.read(selectedStoreProvider);
    if (selectedStore != null) {
      await _loadEmployees(selectedStore.id);
    }
  }
}
