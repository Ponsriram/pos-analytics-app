import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/common/widgets/common_app_bar.dart';
import '../../../../core/common/widgets/empty_state_widget.dart';
import '../../../../core/common/widgets/error_widget.dart';
import '../../../../core/common/widgets/loader.dart';
import '../../../../core/utils/currency_formatter.dart';
import '../../../../core/utils/date_formatter.dart';
import '../../viewmodel/online_orders_viewmodel.dart';

class OnlineOrdersPage extends ConsumerWidget {
  const OnlineOrdersPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ordersState = ref.watch(onlineOrdersViewModelProvider);
    final vm = ref.read(onlineOrdersViewModelProvider.notifier);
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: const CommonAppBar(
        title: 'Online Orders Activity',
        showOutletPicker: false,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Platform filter chips
          SizedBox(
            height: 48,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              itemCount: vm.channels.length,
              separatorBuilder: (_, __) => const SizedBox(width: 8),
              itemBuilder: (context, index) {
                final channel = vm.channels[index];
                final isSelected =
                    vm.selectedChannel == channel ||
                    (vm.selectedChannel == null && channel == 'All');
                return FilterChip(
                  label: Text(
                    channel == 'online'
                        ? 'Online'
                        : channel == 'aggregator'
                        ? 'Aggregator'
                        : channel,
                  ),
                  selected: isSelected,
                  onSelected: (_) {
                    vm.setSelectedChannel(channel == 'All' ? null : channel);
                  },
                  selectedColor: colorScheme.primaryContainer,
                  checkmarkColor: colorScheme.primary,
                );
              },
            ),
          ),
          const SizedBox(height: 8),
          // Content
          Expanded(
            child: ordersState.when(
              loading: () => const Loader(),
              error: (error, _) => AppErrorWidget(
                message: error.toString(),
                onRetry: () => vm.refresh(),
              ),
              data: (orders) {
                if (orders.isEmpty) {
                  return RefreshIndicator(
                    onRefresh: () => vm.refresh(),
                    child: ListView(
                      physics: const AlwaysScrollableScrollPhysics(),
                      children: const [
                        SizedBox(height: 80),
                        EmptyStateWidget(
                          icon: Icons.shopping_cart_outlined,
                          title: 'No Online Orders',
                          description:
                              'Online orders from integrated platforms will appear here.',
                        ),
                      ],
                    ),
                  );
                }
                return RefreshIndicator(
                  onRefresh: () => vm.refresh(),
                  child: ListView.builder(
                    padding: const EdgeInsets.all(16),
                    itemCount: orders.length,
                    itemBuilder: (context, index) {
                      final order = orders[index];
                      return Card(
                        margin: const EdgeInsets.only(bottom: 8),
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                          side: BorderSide(
                            color: colorScheme.outlineVariant.withValues(
                              alpha: 0.3,
                            ),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Flexible(
                                    child: Text(
                                      '#${order.id}',
                                      style: textTheme.titleSmall?.copyWith(
                                        fontWeight: FontWeight.w600,
                                      ),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  Text(
                                    CurrencyFormatter.format(order.netAmount),
                                    style: textTheme.titleSmall?.copyWith(
                                      fontWeight: FontWeight.bold,
                                      color: colorScheme.primary,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 8),
                              Text(
                                '${order.channel} • ${order.orderType}',
                                style: textTheme.bodySmall?.copyWith(
                                  color: colorScheme.onSurfaceVariant,
                                ),
                              ),
                              if (order.createdAt != null)
                                Text(
                                  DateFormatter.formatDateTime(
                                    order.createdAt!,
                                  ),
                                  style: textTheme.bodySmall?.copyWith(
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
            ),
          ),
        ],
      ),
    );
  }
}
