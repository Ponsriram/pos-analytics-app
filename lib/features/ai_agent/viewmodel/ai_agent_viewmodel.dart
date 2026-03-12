import 'dart:async';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../model/chat_message_model.dart';

part 'ai_agent_viewmodel.g.dart';

class AiAgentState {
  final List<ChatMessage> messages;
  final bool isTyping;
  final String? errorMessage;

  const AiAgentState({
    this.messages = const [],
    this.isTyping = false,
    this.errorMessage,
  });

  AiAgentState copyWith({
    List<ChatMessage>? messages,
    bool? isTyping,
    String? errorMessage,
  }) {
    return AiAgentState(
      messages: messages ?? this.messages,
      isTyping: isTyping ?? this.isTyping,
      errorMessage: errorMessage,
    );
  }
}

@riverpod
class AiAgentViewModel extends _$AiAgentViewModel {
  @override
  FutureOr<AiAgentState> build() {
    return AiAgentState(
      messages: [
        ChatMessage(
          content:
              "Hello! I'm your POS Analytics Assistant.\n\n"
              "I can help you with:\n"
              "• **Dashboard** — Sales trends, revenue insights\n"
              "• **Orders** — Order history, running orders\n"
              "• **Inventory** — Stock levels, low stock alerts\n"
              "• **Reports** — Sales reports, day close summaries\n"
              "• **Employees** — Staff performance, attendance\n"
              "• **App Help** — Navigation, features, settings\n\n"
              "How can I assist you today?",
          isUser: false,
        ),
      ],
    );
  }

  Future<void> sendMessage(String message) async {
    if (message.trim().isEmpty) return;

    final currentState = state.value ?? const AiAgentState();

    final userMessage = ChatMessage(content: message.trim(), isUser: true);
    state = AsyncData(
      currentState.copyWith(
        messages: [...currentState.messages, userMessage],
        isTyping: true,
        errorMessage: null,
      ),
    );

    // Simulate AI response (replace with actual API integration)
    await Future.delayed(const Duration(seconds: 1));

    final aiResponse = ChatMessage(
      content:
          "Thank you for your question about \"${message.trim()}\".\n\n"
          "AI integration is coming soon! This feature will provide "
          "intelligent insights about your POS data, help you analyze "
          "trends, and answer questions about your business performance.",
      isUser: false,
    );

    state = AsyncData(
      state.value!.copyWith(
        messages: [...state.value!.messages, aiResponse],
        isTyping: false,
      ),
    );
  }

  void clearChat() {
    state = AsyncData(
      AiAgentState(
        messages: [
          ChatMessage(
            content: "Chat cleared. How can I help you?",
            isUser: false,
          ),
        ],
      ),
    );
  }
}
