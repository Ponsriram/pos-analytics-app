import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/common/widgets/common_app_bar.dart';
import '../../../../core/common/widgets/empty_state_widget.dart';
import '../../../../core/common/widgets/error_widget.dart';
import '../../../../core/common/widgets/loader.dart';
import '../../../../core/utils/currency_formatter.dart';
import '../../model/day_close_report.dart';
import '../../../../core/common/widgets/ask_ai_fab.dart';
import '../../viewmodel/reports_viewmodel.dart';
import 'sales_report_detail_page.dart';

class ReportsPage extends ConsumerWidget {
  const ReportsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final reportsState = ref.watch(reportsViewModelProvider);
    final reportsVM = ref.read(reportsViewModelProvider.notifier);
    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: const CommonAppBar(),
      floatingActionButton: const AskAiFab(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                Text(
                  'Reports',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: colorScheme.onSurface,
                  ),
                ),
                const Spacer(),
                TextButton.icon(
                  onPressed: () async {
                    final range = await showDateRangePicker(
                      context: context,
                      firstDate: DateTime(2023),
                      lastDate: DateTime.now(),
                      initialDateRange: DateTimeRange(
                        start: reportsVM.startDate,
                        end: reportsVM.endDate,
                      ),
                    );
                    if (range != null) {
                      reportsVM.setDateRange(range.start, range.end);
                    }
                  },
                  icon: const Icon(Icons.date_range, size: 18),
                  label: const Text(
                    'Date Range',
                    style: TextStyle(fontSize: 12),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: reportsState.when(
              loading: () => const Loader(),
              error: (error, _) => AppErrorWidget(
                message: error.toString(),
                onRetry: () => reportsVM.refresh(),
              ),
              data: (reports) {
                if (reports.isEmpty) {
                  return RefreshIndicator(
                    onRefresh: () => reportsVM.refresh(),
                    child: ListView(
                      physics: const AlwaysScrollableScrollPhysics(),
                      children: const [
                        SizedBox(height: 100),
                        EmptyStateWidget(
                          icon: Icons.document_scanner,
                          title: 'No reports found',
                          description:
                              'Select a store and date range to view reports.',
                        ),
                      ],
                    ),
                  );
                }
                return RefreshIndicator(
                  onRefresh: () => reportsVM.refresh(),
                  child: ListView.builder(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    itemCount: reports.length,
                    itemBuilder: (context, index) =>
                        _ReportCard(report: reports[index]),
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

class _ReportCard extends StatelessWidget {
  final DayCloseReport report;

  const _ReportCard({required this.report});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 0,
      color: colorScheme.surface,
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => SalesReportDetailPage(report: report),
            ),
          );
        },
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                report.businessDate,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: colorScheme.onSurface,
                ),
              ),
              const SizedBox(height: 12),
              Row(
                children: [
                  _metricBox(
                    'Orders',
                    report.totalOrders.toString(),
                    colorScheme,
                  ),
                  _metricBox(
                    'Gross Sales',
                    CurrencyFormatter.formatCompact(report.grossSales),
                    colorScheme,
                  ),
                  _metricBox(
                    'Net Sales',
                    CurrencyFormatter.formatCompact(report.netSales),
                    colorScheme,
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  _metricBox(
                    'Tax',
                    CurrencyFormatter.formatCompact(report.totalTax),
                    colorScheme,
                  ),
                  _metricBox(
                    'Discounts',
                    CurrencyFormatter.formatCompact(report.totalDiscounts),
                    colorScheme,
                  ),
                  _metricBox(
                    'Net Cash',
                    CurrencyFormatter.formatCompact(report.netCash),
                    colorScheme,
                  ),
                ],
              ),
              if (report.paymentBreakdown.isNotEmpty) ...[
                const SizedBox(height: 12),
                Wrap(
                  spacing: 8,
                  runSpacing: 4,
                  children: report.paymentBreakdown.entries.map((e) {
                    return Chip(
                      label: Text(
                        '${e.key}: ${CurrencyFormatter.formatCompact(e.value)}',
                        style: const TextStyle(fontSize: 10),
                      ),
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      visualDensity: VisualDensity.compact,
                    );
                  }).toList(),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }

  Widget _metricBox(String label, String value, ColorScheme colorScheme) {
    return Expanded(
      child: Column(
        children: [
          Text(
            value,
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w600,
              color: colorScheme.onSurface,
            ),
          ),
          Text(
            label,
            style: TextStyle(fontSize: 10, color: colorScheme.onSurfaceVariant),
          ),
        ],
      ),
    );
  }
}
