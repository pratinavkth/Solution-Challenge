import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:pratinav_s_application9/presentation/ai_chatbot_conversation_screen/models/ai_chatbot_conversation_model.dart';
part 'ai_chatbot_conversation_event.dart';
part 'ai_chatbot_conversation_state.dart';

/// A bloc that manages the state of a AiChatbotConversation according to the event that is dispatched to it.
class AiChatbotConversationBloc
    extends Bloc<AiChatbotConversationEvent, AiChatbotConversationState> {
  AiChatbotConversationBloc(AiChatbotConversationState initialState)
      : super(initialState) {
    on<AiChatbotConversationInitialEvent>(_onInitialize);
    on<ChangeRadioButtonEvent>(_changeRadioButton);
  }

  _changeRadioButton(
    ChangeRadioButtonEvent event,
    Emitter<AiChatbotConversationState> emit,
  ) {
    emit(state.copyWith(radioGroup: event.value));
  }

  _onInitialize(
    AiChatbotConversationInitialEvent event,
    Emitter<AiChatbotConversationState> emit,
  ) async {
    emit(state.copyWith(radioGroup: ""));
  }
}
