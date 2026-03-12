import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../models/store.dart';

part 'selected_store_provider.g.dart';

/// null means "All Outlets"
@Riverpod(keepAlive: true)
class SelectedStoreNotifier extends _$SelectedStoreNotifier {
  @override
  Store? build() => null;

  void select(Store? store) => state = store;
}
