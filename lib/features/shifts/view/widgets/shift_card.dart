import 'package:flutter/material.dart';
import '../../../../core/utils/currency_formatter.dart';
import '../../../../core/utils/date_formatter.dart';
import '../../model/shift.dart';

class ShiftCard extends StatelessWidget {
  final Shift shift;
  final VoidCallback onTap;

  const ShiftCard({super.key, required this.shift, required this.onTap});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final isOpen = shift.status == 'open';

    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 0,
      color: colorScheme.surface,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Text(
                      'Employee: ${shift.employeeId ?? 'N/A'}',
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: isOpen
                          ? Colors.green.shade50
                          : Colors.grey.shade100,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      isOpen ? 'OPEN' : 'CLOSED',
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w600,
                        color:
                            isOpen ? Colors.green.shade700 : Colors.grey.shade600,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Text(
                shift.startedAt != null
                    ? '${DateFormatter.formatDateTime(shift.startedAt!)} → ${shift.endedAt != null ? DateFormatter.formatDateTime(shift.endedAt!) : 'Active'}'
                    : 'Not started',
                style: TextStyle(
                  fontSize: 12,
                  color: colorScheme.onSurfaceVariant,
                ),
              ),
              const SizedBox(height: 12),
              Row(
                children: [
                  _metricCol('Opening', CurrencyFormatter.formatCompact(shift.openingCash), colorScheme),
                  _metricCol('Closing', CurrencyFormatter.formatCompact(shift.closingCash), colorScheme),
                  _metricCol(
                    'Variance',
                    CurrencyFormatter.formatCompact(shift.cashVariance),
                    colorScheme,
                    valueColor: shift.cashVariance < 0
                        ? colorScheme.error
                        : Colors.green,
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  _metricCol('Total Sales', CurrencyFormatter.formatCompact(shift.totalSales), colorScheme),
                  _metricCol('Orders', shift.totalOrders.toString(), colorScheme),
                  const Expanded(child: SizedBox.shrink()),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _metricCol(String label, String value, ColorScheme colorScheme,
      {Color? valueColor}) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: TextStyle(
              fontSize: 10,
              color: colorScheme.onSurfaceVariant,
            ),
          ),
          Text(
            value,
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w600,
              color: valueColor ?? colorScheme.onSurface,
            ),
          ),
        ],
      ),
    );
  }
}
