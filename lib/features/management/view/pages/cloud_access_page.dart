import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import '../../../../core/common/widgets/common_app_bar.dart';

class CloudAccessPage extends ConsumerStatefulWidget {
  const CloudAccessPage({super.key});

  @override
  ConsumerState<CloudAccessPage> createState() => _CloudAccessPageState();
}

class _CloudAccessPageState extends ConsumerState<CloudAccessPage> {
  bool _autoSync = true;
  bool _syncOrders = true;
  bool _syncInventory = true;
  bool _syncReports = true;
  bool _syncEmployees = false;
  String _syncFrequency = 'Every 15 minutes';

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: const CommonAppBar(
        title: 'Cloud Access',
        showOutletPicker: false,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          // Sync status card
          Card(
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
              side: BorderSide(color: Colors.green.withValues(alpha: 0.3)),
            ),
            color: Colors.green.withValues(alpha: 0.05),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  Container(
                    width: 48,
                    height: 48,
                    decoration: BoxDecoration(
                      color: Colors.green.withValues(alpha: 0.15),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Icon(
                      Icons.cloud_done,
                      color: Colors.green,
                      size: 24,
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Cloud Sync Active',
                          style: textTheme.titleSmall?.copyWith(
                            fontWeight: FontWeight.w600,
                            color: Colors.green,
                          ),
                        ),
                        const SizedBox(height: 2),
                        Text(
                          'Last synced: 2 minutes ago',
                          style: textTheme.bodySmall?.copyWith(
                            color: colorScheme.onSurfaceVariant,
                          ),
                        ),
                      ],
                    ),
                  ),
                  OutlinedButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Syncing now...')),
                      );
                    },
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(color: Colors.green),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: const Text(
                      'Sync Now',
                      style: TextStyle(color: Colors.green),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 24),

          // Settings section
          Text(
            'Sync Settings',
            style: textTheme.titleSmall?.copyWith(
              fontWeight: FontWeight.w600,
              color: colorScheme.onSurfaceVariant,
            ),
          ),
          const SizedBox(height: 12),

          _buildSwitchTile(
            'Auto Sync',
            'Automatically sync data to cloud',
            Iconsax.refresh,
            _autoSync,
            (v) => setState(() => _autoSync = v),
            colorScheme,
            textTheme,
          ),
          const SizedBox(height: 8),
          _buildDropdownTile(
            'Sync Frequency',
            _syncFrequency,
            [
              'Every 5 minutes',
              'Every 15 minutes',
              'Every 30 minutes',
              'Every hour',
            ],
            (v) => setState(() => _syncFrequency = v ?? _syncFrequency),
            colorScheme,
            textTheme,
          ),
          const SizedBox(height: 24),

          // Data selection
          Text(
            'Data to Sync',
            style: textTheme.titleSmall?.copyWith(
              fontWeight: FontWeight.w600,
              color: colorScheme.onSurfaceVariant,
            ),
          ),
          const SizedBox(height: 12),

          _buildSwitchTile(
            'Orders',
            'Sync all orders and transactions',
            Iconsax.receipt,
            _syncOrders,
            (v) => setState(() => _syncOrders = v),
            colorScheme,
            textTheme,
          ),
          _buildSwitchTile(
            'Inventory',
            'Sync inventory and stock levels',
            Iconsax.box,
            _syncInventory,
            (v) => setState(() => _syncInventory = v),
            colorScheme,
            textTheme,
          ),
          _buildSwitchTile(
            'Reports',
            'Sync generated reports',
            Iconsax.chart_2,
            _syncReports,
            (v) => setState(() => _syncReports = v),
            colorScheme,
            textTheme,
          ),
          _buildSwitchTile(
            'Employees',
            'Sync employee data and shifts',
            Iconsax.people,
            _syncEmployees,
            (v) => setState(() => _syncEmployees = v),
            colorScheme,
            textTheme,
          ),
          const SizedBox(height: 24),

          // Storage info
          Text(
            'Storage',
            style: textTheme.titleSmall?.copyWith(
              fontWeight: FontWeight.w600,
              color: colorScheme.onSurfaceVariant,
            ),
          ),
          const SizedBox(height: 12),
          Card(
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
              side: BorderSide(
                color: colorScheme.outlineVariant.withValues(alpha: 0.3),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Used', style: textTheme.bodySmall),
                      Text(
                        '1.2 GB / 5.0 GB',
                        style: textTheme.bodySmall?.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(4),
                    child: LinearProgressIndicator(
                      value: 0.24,
                      minHeight: 8,
                      backgroundColor: colorScheme.surfaceContainerHighest,
                      valueColor: AlwaysStoppedAnimation(colorScheme.primary),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    '24% used — 3.8 GB remaining',
                    style: textTheme.labelSmall?.copyWith(
                      color: colorScheme.onSurfaceVariant,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSwitchTile(
    String title,
    String subtitle,
    IconData icon,
    bool value,
    ValueChanged<bool> onChanged,
    ColorScheme colorScheme,
    TextTheme textTheme,
  ) {
    return Card(
      elevation: 0,
      margin: const EdgeInsets.only(bottom: 4),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(
          color: colorScheme.outlineVariant.withValues(alpha: 0.3),
        ),
      ),
      child: SwitchListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
        secondary: Container(
          width: 36,
          height: 36,
          decoration: BoxDecoration(
            color: colorScheme.primaryContainer.withValues(alpha: 0.5),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Icon(icon, color: colorScheme.primary, size: 18),
        ),
        title: Text(
          title,
          style: textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.w500),
        ),
        subtitle: Text(
          subtitle,
          style: textTheme.bodySmall?.copyWith(
            color: colorScheme.onSurfaceVariant,
          ),
        ),
        value: value,
        onChanged: onChanged,
      ),
    );
  }

  Widget _buildDropdownTile(
    String title,
    String value,
    List<String> options,
    ValueChanged<String?> onChanged,
    ColorScheme colorScheme,
    TextTheme textTheme,
  ) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(
          color: colorScheme.outlineVariant.withValues(alpha: 0.3),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Row(
          children: [
            Container(
              width: 36,
              height: 36,
              decoration: BoxDecoration(
                color: colorScheme.primaryContainer.withValues(alpha: 0.5),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Icon(
                Iconsax.timer_1,
                color: colorScheme.primary,
                size: 18,
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Text(
                title,
                style: textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            DropdownButton<String>(
              value: value,
              underline: const SizedBox.shrink(),
              style: textTheme.bodySmall?.copyWith(
                color: colorScheme.primary,
                fontWeight: FontWeight.w500,
              ),
              items: options
                  .map((o) => DropdownMenuItem(value: o, child: Text(o)))
                  .toList(),
              onChanged: onChanged,
            ),
          ],
        ),
      ),
    );
  }
}
