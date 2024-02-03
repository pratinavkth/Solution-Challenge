import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:pratinav_s_application9/presentation/home_page_chatbot_container_screen/models/home_page_chatbot_container_model.dart';
part 'home_page_chatbot_container_event.dart';
part 'home_page_chatbot_container_state.dart';

/// A bloc that manages the state of a HomePageChatbotContainer according to the event that is dispatched to it.
class HomePageChatbotContainerBloc
    extends Bloc<HomePageChatbotContainerEvent, HomePageChatbotContainerState> {
  HomePageChatbotContainerBloc(HomePageChatbotContainerState initialState)
      : super(initialState) {
    on<HomePageChatbotContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    HomePageChatbotContainerInitialEvent event,
    Emitter<HomePageChatbotContainerState> emit,
  ) async {}
}
