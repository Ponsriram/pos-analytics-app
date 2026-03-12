import 'package:intl/intl.dart';

class DateFormatter {
  static String formatDate(DateTime date) {
    return DateFormat('d MMM yyyy').format(date);
  }

  static String formatShortDate(DateTime date) {
    final day = date.day;
    final suffix = _getDaySuffix(day);
    return '$day$suffix ${DateFormat('MMM').format(date)}';
  }

  static String formatDateTime(DateTime date) {
    return DateFormat('d MMM yyyy, hh:mm a').format(date);
  }

  static String formatTime(DateTime date) {
    return DateFormat('hh:mm a').format(date);
  }

  static String _getDaySuffix(int day) {
    if (day >= 11 && day <= 13) return 'th';
    return switch (day % 10) {
      1 => 'st',
      2 => 'nd',
      3 => 'rd',
      _ => 'th',
    };
  }
}
