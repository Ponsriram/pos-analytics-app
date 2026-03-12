import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../features/stores/repository/store_repository.dart';
import '../models/store.dart';

part 'stores_provider.g.dart';

@Riverpod(keepAlive: true)
class StoresNotifier extends _$StoresNotifier {
  @override
  Future<List<Store>> build() async {
    final repository = ref.watch(storeRepositoryProvider);
    final result = await repository.getStores();
    return result.fold(
      (failure) => throw failure,
      (stores) => stores,
    );
  }

  Future<void> refresh() async {
    state = const AsyncValue.loading();
    final repository = ref.read(storeRepositoryProvider);
    final result = await repository.getStores();
    state = result.fold(
      (failure) => AsyncValue.error(failure, StackTrace.current),
      (stores) => AsyncValue.data(stores),
    );
  }
}
