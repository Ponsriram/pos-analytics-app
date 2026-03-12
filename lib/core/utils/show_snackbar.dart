import 'package:flutter/material.dart';

enum SnackBarType { success, error, info }

void showSnackBar(BuildContext context, String message,
    [SnackBarType type = SnackBarType.info]) {
  final colorScheme = Theme.of(context).colorScheme;
  final bgColor = switch (type) {
    SnackBarType.success => colorScheme.primaryContainer,
    SnackBarType.error => colorScheme.errorContainer,
    SnackBarType.info => colorScheme.surfaceContainerHighest,
  };
  final textColor = switch (type) {
    SnackBarType.success => colorScheme.onPrimaryContainer,
    SnackBarType.error => colorScheme.onErrorContainer,
    SnackBarType.info => colorScheme.onSurface,
  };

  ScaffoldMessenger.of(context)
    ..hideCurrentSnackBar()
    ..showSnackBar(SnackBar(
      content: Text(message, style: TextStyle(color: textColor)),
      backgroundColor: bgColor,
      behavior: SnackBarBehavior.floating,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    ));
}
