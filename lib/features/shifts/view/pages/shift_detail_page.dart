import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/common/widgets/error_widget.dart';
import '../../../../core/common/widgets/loader.dart';
import '../../../../core/utils/currency_formatter.dart';
import '../../../../core/utils/date_formatter.dart';
import '../../model/shift.dart';
import '../../repository/shift_repository.dart';

class ShiftDetailPage extends ConsumerWidget {
  final String shiftId;

  const ShiftDetailPage({super.key, required this.shiftId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final shiftFuture = ref.watch(_shiftDetailProvider(shiftId));
    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(title: const Text('Shift Details')),
      body: shiftFuture.when(
        loading: () => const Loader(),
        error: (error, _) => AppErrorWidget(
          message: error.toString(),
          onRetry: () => ref.invalidate(_shiftDetailProvider(shiftId)),
        ),
        data: (shift) => SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              _buildInfoCard(shift, colorScheme),
              const SizedBox(height: 16),
              _buildCashSummary(shift, colorScheme),
              const SizedBox(height: 16),
              _buildSalesSummary(shift, colorScheme),
              const SizedBox(height: 16),
              if (shift.paymentSummaries.isNotEmpty)
                _buildPaymentBreakdown(shift, colorScheme),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildInfoCard(Shift shift, ColorScheme colorScheme) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 0,
      color: colorScheme.surface,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            _row('Employee', shift.employeeId ?? 'N/A', colorScheme),
            _row('Terminal', shift.terminalId ?? 'N/A', colorScheme),
            _row('Status', shift.status.toUpperCase(), colorScheme),
            if (shift.startedAt != null)
              _row('Started', DateFormatter.formatDateTime(shift.startedAt!),
                  colorScheme),
            if (shift.endedAt != null)
              _row('Ended', DateFormatter.formatDateTime(shift.endedAt!),
                  colorScheme),
          ],
        ),
      ),
    );
  }

  Widget _buildCashSummary(Shift shift, ColorScheme colorScheme) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 0,
      color: colorScheme.surface,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Cash Summary',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: colorScheme.onSurface)),
            const SizedBox(height: 12),
            _row('Opening Cash',
                CurrencyFormatter.format(shift.openingCash), colorScheme),
            _row('Closing Cash',
                CurrencyFormatter.format(shift.closingCash), colorScheme),
            _row('Expected Cash',
                CurrencyFormatter.format(shift.expectedCash), colorScheme),
            _row('Variance', CurrencyFormatter.format(shift.cashVariance),
                colorScheme,
                valueColor:
                    shift.cashVariance < 0 ? colorScheme.error : Colors.green),
          ],
        ),
      ),
    );
  }

  Widget _buildSalesSummary(Shift shift, ColorScheme colorScheme) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 0,
      color: colorScheme.surface,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Sales Summary',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: colorScheme.onSurface)),
            const SizedBox(height: 12),
            _row('Total Sales', CurrencyFormatter.format(shift.totalSales),
                colorScheme),
            _row('Total Orders', shift.totalOrders.toString(), colorScheme),
          ],
        ),
      ),
    );
  }

  Widget _buildPaymentBreakdown(Shift shift, ColorScheme colorScheme) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 0,
      color: colorScheme.surface,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Payment Breakdown',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: colorScheme.onSurface)),
            const SizedBox(height: 12),
            // Header
            Row(
              children: [
                const Expanded(
                    flex: 2,
                    child: Text('Method',
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w600))),
                const Expanded(
                    child: Text('Expected',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w600))),
                const Expanded(
                    child: Text('Actual',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w600))),
                const Expanded(
                    child: Text('Variance',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w600))),
              ],
            ),
            const Divider(),
            ...shift.paymentSummaries.map((ps) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4),
                  child: Row(
                    children: [
                      Expanded(
                          flex: 2,
                          child: Text(ps.paymentMethod.toUpperCase(),
                              style: const TextStyle(fontSize: 12))),
                      Expanded(
                          child: Text(
                              CurrencyFormatter.formatCompact(
                                  ps.expectedAmount),
                              textAlign: TextAlign.right,
                              style: const TextStyle(fontSize: 12))),
                      Expanded(
                          child: Text(
                              CurrencyFormatter.formatCompact(
                                  ps.actualAmount),
                              textAlign: TextAlign.right,
                              style: const TextStyle(fontSize: 12))),
                      Expanded(
                          child: Text(
                              CurrencyFormatter.formatCompact(ps.variance),
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                fontSize: 12,
                                color: ps.variance < 0
                                    ? colorScheme.error
                                    : Colors.green,
                              ))),
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }

  Widget _row(String label, String value, ColorScheme colorScheme,
      {Color? valueColor}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label,
              style: TextStyle(
                  fontSize: 13, color: colorScheme.onSurfaceVariant)),
          Text(value,
              style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                  color: valueColor ?? colorScheme.onSurface)),
        ],
      ),
    );
  }
}

final _shiftDetailProvider =
    FutureProvider.family<Shift, String>((ref, shiftId) async {
  final repo = ref.watch(shiftRepositoryProvider);
  final result = await repo.getShift(shiftId);
  return result.fold(
    (failure) => throw failure,
    (shift) => shift,
  );
});
