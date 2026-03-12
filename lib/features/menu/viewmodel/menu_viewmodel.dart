import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../core/providers/selected_store_provider.dart';
import '../model/menu_item_model.dart';
import '../repository/menu_repository.dart';

part 'menu_viewmodel.g.dart';

@riverpod
class MenuViewModel extends _$MenuViewModel {
  String? _selectedCategory;
  String _searchQuery = '';
  List<String> _categories = const ['All'];

  String? get selectedCategory => _selectedCategory;
  String get searchQuery => _searchQuery;
  List<String> get categories => _categories;

  @override
  AsyncValue<List<MenuItemModel>> build() {
    final selectedStore = ref.watch(selectedStoreProvider);
    if (selectedStore != null) {
      _loadMenu(selectedStore.id);
    } else {
      state = const AsyncValue.data([]);
    }
    return const AsyncValue.loading();
  }

  Future<void> _loadMenu(String storeId) async {
    state = const AsyncValue.loading();
    final repo = ref.read(menuRepositoryProvider);

    // Load categories
    final catResult = await repo.getCategories(storeId: storeId);
    catResult.fold((_) {}, (cats) => _categories = ['All', ...cats]);

    // Load items
    final result = await repo.getMenuItems(
      storeId: storeId,
      categoryId: _selectedCategory,
    );
    state = result.fold(
      (failure) => AsyncValue.error(failure.message, StackTrace.current),
      (items) => AsyncValue.data(_applySearch(items)),
    );
  }

  List<MenuItemModel> _applySearch(List<MenuItemModel> items) {
    if (_searchQuery.isEmpty) return items;
    final query = _searchQuery.toLowerCase();
    return items.where((i) => i.name.toLowerCase().contains(query)).toList();
  }

  void setCategory(String? category) {
    _selectedCategory = category;
    final selectedStore = ref.read(selectedStoreProvider);
    if (selectedStore != null) {
      _loadMenu(selectedStore.id);
    }
  }

  void setSearchQuery(String query) {
    _searchQuery = query;
    // Re-filter current data without reloading
    if (state case AsyncData<List<MenuItemModel>>()) {
      final selectedStore = ref.read(selectedStoreProvider);
      if (selectedStore != null) {
        _loadMenu(selectedStore.id);
      }
    }
  }

  Future<void> refresh() async {
    final selectedStore = ref.read(selectedStoreProvider);
    if (selectedStore != null) {
      await _loadMenu(selectedStore.id);
    }
  }
}
