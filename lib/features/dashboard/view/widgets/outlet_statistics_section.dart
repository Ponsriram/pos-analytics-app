import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/common/widgets/loader.dart';
import '../../../../core/utils/currency_formatter.dart';
import '../../model/outlet_stats.dart';
import '../../viewmodel/dashboard_viewmodel.dart';

class OutletStatisticsSection extends ConsumerStatefulWidget {
  const OutletStatisticsSection({super.key});

  @override
  ConsumerState<OutletStatisticsSection> createState() =>
      _OutletStatisticsSectionState();
}

class _OutletStatisticsSectionState
    extends ConsumerState<OutletStatisticsSection> {
  int _activeTab = 0;
  final _tabs = ['Orders', 'Sales', 'Net Sales', 'Tax', 'Discounts'];

  @override
  Widget build(BuildContext context) {
    final outletStats = ref.watch(outletStatsViewModelProvider);
    final colorScheme = Theme.of(context).colorScheme;

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: colorScheme.surface,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: colorScheme.shadow.withValues(alpha: 0.05),
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(Icons.bar_chart, color: colorScheme.primary, size: 20),
              const SizedBox(width: 8),
              Text(
                'Outlet Wise Statistics',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: colorScheme.onSurface,
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(_tabs.length, (index) {
                final isActive = _activeTab == index;
                return Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: InkWell(
                    onTap: () => setState(() => _activeTab = index),
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 8),
                      decoration: BoxDecoration(
                        color: isActive
                            ? colorScheme.primary
                            : colorScheme.surfaceContainerHighest,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        _tabs[index],
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight:
                              isActive ? FontWeight.w600 : FontWeight.w400,
                          color: isActive
                              ? colorScheme.onPrimary
                              : colorScheme.onSurfaceVariant,
                        ),
                      ),
                    ),
                  ),
                );
              }),
            ),
          ),
          const SizedBox(height: 16),
          outletStats.when(
            loading: () => const SizedBox(height: 100, child: Loader()),
            error: (e, _) => Text('Error: $e'),
            data: (outlets) => _buildTable(outlets, colorScheme),
          ),
        ],
      ),
    );
  }

  Widget _buildTable(List<OutletStats> outlets, ColorScheme colorScheme) {
    final colors = [
      colorScheme.primary,
      colorScheme.tertiary,
      colorScheme.secondary,
      colorScheme.error,
    ];

    double total = 0;
    for (final outlet in outlets) {
      total += _getMetric(outlet);
    }

    return Column(
      children: [
        ...outlets.asMap().entries.map((entry) {
          final idx = entry.key;
          final outlet = entry.value;
          final value = _getMetric(outlet);
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 6),
            child: Row(
              children: [
                Container(
                  width: 8,
                  height: 8,
                  decoration: BoxDecoration(
                    color: colors[idx % colors.length],
                    shape: BoxShape.circle,
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: Text(
                    outlet.storeName,
                    style: const TextStyle(fontSize: 13),
                  ),
                ),
                Text(
                  _activeTab == 0
                      ? value.toInt().toString()
                      : CurrencyFormatter.formatCompact(value),
                  style: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          );
        }),
        const Divider(),
        Row(
          children: [
            const Expanded(
              child: Text(
                'Total',
                style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
              ),
            ),
            Text(
              _activeTab == 0
                  ? total.toInt().toString()
                  : CurrencyFormatter.formatCompact(total),
              style: const TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ],
    );
  }

  double _getMetric(OutletStats outlet) {
    return switch (_activeTab) {
      0 => outlet.totalOrders.toDouble(),
      1 => outlet.grossSales,
      2 => outlet.netSales,
      3 => outlet.taxCollected,
      4 => outlet.totalDiscounts,
      _ => 0,
    };
  }
}
