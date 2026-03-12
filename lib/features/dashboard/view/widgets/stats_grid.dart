import 'package:flutter/material.dart';
import '../../../../core/common/widgets/stat_card.dart';
import '../../../../core/utils/currency_formatter.dart';
import '../../model/dashboard_stats.dart';

class StatsGrid extends StatelessWidget {
  final DashboardStats stats;

  const StatsGrid({super.key, required this.stats});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    final onlineSales =
        (stats.paymentBreakdown['upi'] ?? 0) +
        (stats.paymentBreakdown['card'] ?? 0);
    final cashCollected = stats.paymentBreakdown['cash'] ?? 0;

    final cards = [
      StatCard(
        icon: Icons.wifi,
        iconColor: colorScheme.primary,
        title: 'Online Sales',
        value: CurrencyFormatter.formatCompact(onlineSales),
      ),
      StatCard(
        icon: Icons.account_balance_wallet,
        iconColor: colorScheme.tertiary,
        title: 'Cash Collected',
        value: CurrencyFormatter.formatCompact(cashCollected),
      ),
      StatCard(
        icon: Icons.bar_chart,
        iconColor: colorScheme.secondary,
        title: 'Net Sales',
        value: CurrencyFormatter.formatCompact(stats.netSales),
      ),
      StatCard(
        icon: Icons.receipt_long,
        iconColor: colorScheme.primaryContainer,
        title: 'Expenses',
        value: CurrencyFormatter.formatCompact(0),
      ),
      StatCard(
        icon: Icons.receipt,
        iconColor: colorScheme.outline,
        title: 'Taxes',
        value: CurrencyFormatter.formatCompact(stats.taxCollected),
      ),
      StatCard(
        icon: Icons.local_offer,
        iconColor: colorScheme.error,
        title: 'Discounts',
        value: CurrencyFormatter.formatCompact(stats.totalDiscounts),
      ),
    ];

    return Column(
      children: [
        for (int i = 0; i < cards.length; i += 2)
          Padding(
            padding: EdgeInsets.only(bottom: i < cards.length - 2 ? 12 : 0),
            child: Row(
              children: [
                Expanded(child: cards[i]),
                const SizedBox(width: 12),
                Expanded(child: cards[i + 1]),
              ],
            ),
          ),
      ],
    );
  }
}
