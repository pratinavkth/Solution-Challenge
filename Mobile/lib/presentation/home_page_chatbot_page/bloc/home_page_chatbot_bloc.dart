import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:pratinav_s_application9/presentation/home_page_chatbot_page/models/home_page_chatbot_model.dart';
part 'home_page_chatbot_event.dart';
part 'home_page_chatbot_state.dart';

/// A bloc that manages the state of a HomePageChatbot according to the event that is dispatched to it.
class HomePageChatbotBloc
    extends Bloc<HomePageChatbotEvent, HomePageChatbotState> {
  HomePageChatbotBloc(HomePageChatbotState initialState) : super(initialState) {
    on<HomePageChatbotInitialEvent>(_onInitialize);
  }

  _onInitialize(
    HomePageChatbotInitialEvent event,
    Emitter<HomePageChatbotState> emit,
  ) async {}
}
