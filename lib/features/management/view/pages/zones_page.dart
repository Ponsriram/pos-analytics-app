import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import '../../../../core/common/widgets/common_app_bar.dart';
import '../../../../core/common/widgets/error_widget.dart';
import '../../../../core/common/widgets/loader.dart';
import '../../../../core/utils/currency_formatter.dart';
import '../../model/delivery_zone.dart';
import '../../viewmodel/zones_viewmodel.dart';

class ZonesPage extends ConsumerWidget {
  const ZonesPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final zonesState = ref.watch(zonesViewModelProvider);
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: const CommonAppBar(
        title: 'Delivery Zones',
        showBack: true,
        showOutletPicker: false,
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => _showCreateDialog(context),
        icon: const Icon(Icons.add),
        label: const Text('Add Zone'),
      ),
      body: zonesState.when(
        loading: () => const Loader(),
        error: (error, _) => AppErrorWidget(
          message: error.toString(),
          onRetry: () => ref.read(zonesViewModelProvider.notifier).refresh(),
        ),
        data: (zones) => RefreshIndicator(
          onRefresh: () => ref.read(zonesViewModelProvider.notifier).refresh(),
          child: ListView(
            physics: const AlwaysScrollableScrollPhysics(),
            padding: const EdgeInsets.all(16),
            children: [
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: colorScheme.primaryContainer.withValues(alpha: 0.2),
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: colorScheme.primary.withValues(alpha: 0.2),
                  ),
                ),
                child: Row(
                  children: [
                    Icon(Iconsax.map, size: 18, color: colorScheme.primary),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        'Configure delivery zones with distance-based fees and estimated delivery times.',
                        style: textTheme.bodySmall?.copyWith(
                          color: colorScheme.primary,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              ...zones.map(
                (z) => _buildZoneCard(context, z, colorScheme, textTheme),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildZoneCard(
    BuildContext context,
    DeliveryZone zone,
    ColorScheme colorScheme,
    TextTheme textTheme,
  ) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(
          color: zone.isActive
              ? colorScheme.outlineVariant.withValues(alpha: 0.3)
              : colorScheme.outlineVariant.withValues(alpha: 0.15),
        ),
      ),
      color: zone.isActive ? null : colorScheme.surface.withValues(alpha: 0.5),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: colorScheme.primaryContainer.withValues(alpha: 0.5),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Icon(
                    Iconsax.location,
                    color: colorScheme.primary,
                    size: 20,
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        zone.name,
                        style: textTheme.titleSmall?.copyWith(
                          fontWeight: FontWeight.w600,
                          color: zone.isActive
                              ? null
                              : colorScheme.onSurfaceVariant,
                        ),
                      ),
                      Text(
                        '${zone.city}${zone.state.isNotEmpty ? ', ${zone.state}' : ''}',
                        style: textTheme.bodySmall?.copyWith(
                          color: colorScheme.onSurfaceVariant,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 4,
                  ),
                  decoration: BoxDecoration(
                    color: zone.isActive
                        ? Colors.green.withValues(alpha: 0.1)
                        : colorScheme.errorContainer.withValues(alpha: 0.3),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(
                    zone.isActive ? 'Active' : 'Disabled',
                    style: textTheme.labelSmall?.copyWith(
                      color: zone.isActive ? Colors.green : colorScheme.error,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            // Stats row
            Row(
              children: [
                _buildStatChip(
                  Icons.delivery_dining,
                  zone.deliveryFee == 0
                      ? 'Free Delivery'
                      : CurrencyFormatter.format(zone.deliveryFee),
                  colorScheme,
                  textTheme,
                ),
                const SizedBox(width: 12),
                _buildStatChip(
                  Icons.shopping_cart_outlined,
                  'Min: ${CurrencyFormatter.format(zone.minOrderAmount)}',
                  colorScheme,
                  textTheme,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStatChip(
    IconData icon,
    String label,
    ColorScheme colorScheme,
    TextTheme textTheme,
  ) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      decoration: BoxDecoration(
        color: colorScheme.surfaceContainerHighest.withValues(alpha: 0.3),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 16, color: colorScheme.onSurfaceVariant),
          const SizedBox(width: 6),
          Text(
            label,
            style: textTheme.labelSmall?.copyWith(
              fontWeight: FontWeight.w500,
              color: colorScheme.onSurfaceVariant,
            ),
          ),
        ],
      ),
    );
  }

  void _showCreateDialog(BuildContext context) {
    final nameController = TextEditingController();
    final areaController = TextEditingController();

    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        title: const Text('Add Delivery Zone'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: nameController,
              decoration: InputDecoration(
                labelText: 'Zone Name',
                hintText: 'e.g., Zone E - Extended',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            const SizedBox(height: 12),
            TextField(
              controller: areaController,
              decoration: InputDecoration(
                labelText: 'Coverage Area',
                hintText: 'e.g., 20-30 km',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(ctx),
            child: const Text('Cancel'),
          ),
          FilledButton(
            onPressed: () {
              Navigator.pop(ctx);
              ScaffoldMessenger.of(
                context,
              ).showSnackBar(const SnackBar(content: Text('Zone created')));
            },
            child: const Text('Create'),
          ),
        ],
      ),
    );
  }
}
