import 'package:flutter/material.dart';
import '../../../features/ai_agent/view/pages/ai_chat_page.dart';

/// Reusable floating action button for "Ask AI" — drop into any page's Scaffold.
class AskAiFab extends StatelessWidget {
  const AskAiFab({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return FloatingActionButton.extended(
      heroTag: null,
      onPressed: () => Navigator.push(
        context,
        MaterialPageRoute(builder: (_) => const AiChatPage()),
      ),
      backgroundColor: colorScheme.primaryContainer,
      foregroundColor: colorScheme.onPrimaryContainer,
      icon: const Icon(Icons.smart_toy_outlined, size: 20),
      label: const Text(
        'Ask AI',
        style: TextStyle(fontWeight: FontWeight.w600),
      ),
    );
  }
}
