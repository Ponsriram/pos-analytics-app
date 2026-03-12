import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/common/widgets/common_app_bar.dart';
import '../../../../core/common/widgets/empty_state_widget.dart';
import '../../../../core/common/widgets/error_widget.dart';
import '../../../../core/common/widgets/loader.dart';
import '../../../../core/common/widgets/ask_ai_fab.dart';
import '../../viewmodel/inventory_viewmodel.dart';

class InventoryPage extends ConsumerWidget {
  const InventoryPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colorScheme = Theme.of(context).colorScheme;

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: const CommonAppBar(),
        floatingActionButton: const AskAiFab(),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
              child: Text(
                'Inventory',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: colorScheme.onSurface,
                ),
              ),
            ),
            TabBar(
              tabs: const [
                Tab(text: 'Stock Levels'),
                Tab(text: 'Out of Stock'),
              ],
              labelColor: colorScheme.primary,
              unselectedLabelColor: colorScheme.onSurfaceVariant,
              indicatorColor: colorScheme.primary,
            ),
            Expanded(
              child: TabBarView(
                children: [_StockLevelsTab(), _OutOfStockTab()],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _StockLevelsTab extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final inventoryState = ref.watch(inventoryViewModelProvider);
    final colorScheme = Theme.of(context).colorScheme;

    return inventoryState.when(
      loading: () => const Loader(),
      error: (error, _) => AppErrorWidget(
        message: error.toString(),
        onRetry: () => ref.read(inventoryViewModelProvider.notifier).refresh(),
      ),
      data: (items) {
        if (items.isEmpty) {
          return RefreshIndicator(
            onRefresh: () =>
                ref.read(inventoryViewModelProvider.notifier).refresh(),
            child: ListView(
              physics: const AlwaysScrollableScrollPhysics(),
              children: const [
                SizedBox(height: 100),
                EmptyStateWidget(
                  icon: Icons.inventory_2,
                  title: 'No inventory items',
                  description: 'No inventory items found for this store.',
                ),
              ],
            ),
          );
        }
        return RefreshIndicator(
          onRefresh: () =>
              ref.read(inventoryViewModelProvider.notifier).refresh(),
          child: ListView.builder(
            padding: const EdgeInsets.all(16),
            itemCount: items.length,
            itemBuilder: (context, index) {
              final item = items[index];
              final stockColor = item.minStock > 0 && item.reorderLevel > 0
                  ? colorScheme.tertiary
                  : colorScheme.error;

              return Card(
                margin: const EdgeInsets.only(bottom: 8),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                elevation: 0,
                color: colorScheme.surface,
                child: ListTile(
                  title: Text(
                    item.name,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  subtitle: Text(
                    '${item.sku ?? 'No SKU'} • ${item.category ?? 'Uncategorized'}',
                    style: TextStyle(
                      fontSize: 12,
                      color: colorScheme.onSurfaceVariant,
                    ),
                  ),
                  trailing: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 2,
                        ),
                        decoration: BoxDecoration(
                          color: stockColor.withValues(alpha: 0.1),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Text(
                          'Min: ${item.minStock.toStringAsFixed(0)}',
                          style: TextStyle(
                            fontSize: 11,
                            color: stockColor,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      const SizedBox(height: 2),
                      Text(
                        'Reorder: ${item.reorderLevel.toStringAsFixed(0)}',
                        style: TextStyle(
                          fontSize: 10,
                          color: colorScheme.onSurfaceVariant,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}

class _OutOfStockTab extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final outOfStockState = ref.watch(outOfStockViewModelProvider);
    final colorScheme = Theme.of(context).colorScheme;

    return outOfStockState.when(
      loading: () => const Loader(),
      error: (error, _) => AppErrorWidget(
        message: error.toString(),
        onRetry: () => ref.read(outOfStockViewModelProvider.notifier).refresh(),
      ),
      data: (items) {
        if (items.isEmpty) {
          return RefreshIndicator(
            onRefresh: () =>
                ref.read(outOfStockViewModelProvider.notifier).refresh(),
            child: ListView(
              physics: const AlwaysScrollableScrollPhysics(),
              children: const [
                SizedBox(height: 100),
                EmptyStateWidget(
                  icon: Icons.check_circle,
                  title: 'All stocked up!',
                  description: 'No items are currently out of stock.',
                ),
              ],
            ),
          );
        }
        return RefreshIndicator(
          onRefresh: () =>
              ref.read(outOfStockViewModelProvider.notifier).refresh(),
          child: ListView.builder(
            padding: const EdgeInsets.all(16),
            itemCount: items.length,
            itemBuilder: (context, index) {
              final item = items[index];
              return Card(
                margin: const EdgeInsets.only(bottom: 8),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                elevation: 0,
                color: colorScheme.surface,
                child: ListTile(
                  leading: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: colorScheme.errorContainer,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Icon(
                      Icons.warning_amber,
                      color: colorScheme.error,
                      size: 20,
                    ),
                  ),
                  title: Text(
                    item.name,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  subtitle: Text(
                    'Reorder Level: ${item.reorderLevel.toStringAsFixed(0)}',
                    style: TextStyle(fontSize: 12, color: colorScheme.error),
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
