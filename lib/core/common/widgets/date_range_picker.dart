import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateRangePickerWidget extends StatelessWidget {
  final DateTime startDate;
  final DateTime? endDate;
  final ValueChanged<DateTime> onDateSelected;
  final ValueChanged<DateTimeRange>? onRangeSelected;
  final bool isRangePicker;

  const DateRangePickerWidget({
    super.key,
    required this.startDate,
    this.endDate,
    required this.onDateSelected,
    this.onRangeSelected,
    this.isRangePicker = false,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final dateText = endDate != null && endDate != startDate
        ? '${DateFormat('d MMM').format(startDate)} - ${DateFormat('d MMM').format(endDate!)}'
        : DateFormat('d MMM').format(startDate);

    return InkWell(
      onTap: () => _pickDate(context),
      borderRadius: BorderRadius.circular(8),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        decoration: BoxDecoration(
          color: colorScheme.surfaceContainerHighest,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.calendar_today, size: 16, color: colorScheme.primary),
            const SizedBox(width: 8),
            Text(
              dateText,
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w500,
                color: colorScheme.onSurface,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _pickDate(BuildContext context) async {
    if (isRangePicker) {
      final range = await showDateRangePicker(
        context: context,
        firstDate: DateTime(2020),
        lastDate: DateTime.now(),
        initialDateRange: DateTimeRange(
          start: startDate,
          end: endDate ?? startDate,
        ),
      );
      if (range != null) {
        onRangeSelected?.call(range);
        onDateSelected(range.start);
      }
    } else {
      final date = await showDatePicker(
        context: context,
        initialDate: startDate,
        firstDate: DateTime(2020),
        lastDate: DateTime.now(),
      );
      if (date != null) {
        onDateSelected(date);
      }
    }
  }
}
