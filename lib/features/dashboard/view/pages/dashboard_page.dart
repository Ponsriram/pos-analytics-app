import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/common/widgets/common_app_bar.dart';
import '../../../../core/common/widgets/date_range_picker.dart';
import '../../../../core/common/widgets/error_widget.dart';
import '../../../../core/common/widgets/loader.dart';
import '../../../../core/providers/stores_provider.dart';
import '../../../../core/common/widgets/ask_ai_fab.dart';
import '../../viewmodel/dashboard_viewmodel.dart';
import '../widgets/orders_chart_section.dart';
import '../widgets/outlet_statistics_section.dart';
import '../widgets/stats_grid.dart';
import '../widgets/total_sales_card.dart';

class DashboardPage extends ConsumerWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dashboardState = ref.watch(dashboardViewModelProvider);
    final dashboardVM = ref.read(dashboardViewModelProvider.notifier);
    final storesState = ref.watch(storesProvider);
    final colorScheme = Theme.of(context).colorScheme;

    final outletCount = storesState.whenOrNull(data: (s) => s.length) ?? 0;

    return Scaffold(
      appBar: const CommonAppBar(),
      floatingActionButton: const AskAiFab(),
      body: RefreshIndicator(
        onRefresh: () async {
          await dashboardVM.refresh();
          await ref.read(outletStatsViewModelProvider.notifier).refresh();
        },
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Dashboard',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: colorScheme.onSurface,
                    ),
                  ),
                  DateRangePickerWidget(
                    startDate: dashboardVM.selectedDate,
                    onDateSelected: (date) => dashboardVM.setDate(date),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              dashboardState.when(
                loading: () => const SizedBox(height: 200, child: Loader()),
                error: (error, _) => AppErrorWidget(
                  message: error.toString(),
                  onRetry: () => dashboardVM.refresh(),
                ),
                data: (stats) => Column(
                  children: [
                    TotalSalesCard(
                      grossSales: stats.grossSales,
                      netSales: stats.netSales,
                      outletCount: outletCount,
                    ),
                    const SizedBox(height: 16),
                    StatsGrid(stats: stats),
                    const SizedBox(height: 16),
                    const OutletStatisticsSection(),
                    const SizedBox(height: 16),
                    OrdersChartSection(totalOrders: stats.totalOrders),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
