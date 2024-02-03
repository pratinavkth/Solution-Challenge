// ignore_for_file: must_be_immutable

part of 'ai_chatbot_conversation_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AiChatbotConversation widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AiChatbotConversationEvent extends Equatable {}

/// Event that is dispatched when the AiChatbotConversation widget is first created.
class AiChatbotConversationInitialEvent extends AiChatbotConversationEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing radio button
class ChangeRadioButtonEvent extends AiChatbotConversationEvent {
  ChangeRadioButtonEvent({required this.value});

  String value;

  @override
  List<Object?> get props => [
        value,
      ];
}
