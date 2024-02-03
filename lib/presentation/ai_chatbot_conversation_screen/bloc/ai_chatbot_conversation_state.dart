// ignore_for_file: must_be_immutable

part of 'ai_chatbot_conversation_bloc.dart';

/// Represents the state of AiChatbotConversation in the application.
class AiChatbotConversationState extends Equatable {
  AiChatbotConversationState({
    this.radioGroup = "",
    this.aiChatbotConversationModelObj,
  });

  AiChatbotConversationModel? aiChatbotConversationModelObj;

  String radioGroup;

  @override
  List<Object?> get props => [
        radioGroup,
        aiChatbotConversationModelObj,
      ];
  AiChatbotConversationState copyWith({
    String? radioGroup,
    AiChatbotConversationModel? aiChatbotConversationModelObj,
  }) {
    return AiChatbotConversationState(
      radioGroup: radioGroup ?? this.radioGroup,
      aiChatbotConversationModelObj:
          aiChatbotConversationModelObj ?? this.aiChatbotConversationModelObj,
    );
  }
}
