// ignore_for_file: must_be_immutable

part of 'home_page_chatbot_bloc.dart';

/// Represents the state of HomePageChatbot in the application.
class HomePageChatbotState extends Equatable {
  HomePageChatbotState({this.homePageChatbotModelObj});

  HomePageChatbotModel? homePageChatbotModelObj;

  @override
  List<Object?> get props => [
        homePageChatbotModelObj,
      ];
  HomePageChatbotState copyWith(
      {HomePageChatbotModel? homePageChatbotModelObj}) {
    return HomePageChatbotState(
      homePageChatbotModelObj:
          homePageChatbotModelObj ?? this.homePageChatbotModelObj,
    );
  }
}
