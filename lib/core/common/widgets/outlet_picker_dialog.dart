import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../models/store.dart';
import '../../providers/selected_store_provider.dart';

class OutletPickerDialog extends ConsumerWidget {
  final List<Store> stores;

  const OutletPickerDialog({super.key, required this.stores});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedStore = ref.watch(selectedStoreProvider);
    final colorScheme = Theme.of(context).colorScheme;

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              'Select Outlet',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: colorScheme.onSurface,
              ),
            ),
          ),
          const SizedBox(height: 8),
          ListTile(
            leading: Icon(
              Icons.store,
              color: selectedStore == null
                  ? colorScheme.primary
                  : colorScheme.onSurfaceVariant,
            ),
            title: const Text('All Outlets'),
            trailing: selectedStore == null
                ? Icon(Icons.check, color: colorScheme.primary)
                : null,
            onTap: () {
              ref.read(selectedStoreProvider.notifier).select(null);
              Navigator.pop(context);
            },
          ),
          const Divider(height: 1),
          Flexible(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: stores.length,
              itemBuilder: (context, index) {
                final store = stores[index];
                final isSelected = selectedStore?.id == store.id;
                return ListTile(
                  leading: Icon(
                    Icons.storefront,
                    color: isSelected
                        ? colorScheme.primary
                        : colorScheme.onSurfaceVariant,
                  ),
                  title: Text(store.name),
                  subtitle: store.city != null ? Text(store.city!) : null,
                  trailing: isSelected
                      ? Icon(Icons.check, color: colorScheme.primary)
                      : null,
                  onTap: () {
                    ref
                        .read(selectedStoreProvider.notifier)
                        .select(store);
                    Navigator.pop(context);
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
