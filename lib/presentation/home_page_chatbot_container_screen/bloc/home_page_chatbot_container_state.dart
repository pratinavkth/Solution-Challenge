// ignore_for_file: must_be_immutable

part of 'home_page_chatbot_container_bloc.dart';

/// Represents the state of HomePageChatbotContainer in the application.
class HomePageChatbotContainerState extends Equatable {
  HomePageChatbotContainerState({this.homePageChatbotContainerModelObj});

  HomePageChatbotContainerModel? homePageChatbotContainerModelObj;

  @override
  List<Object?> get props => [
        homePageChatbotContainerModelObj,
      ];
  HomePageChatbotContainerState copyWith(
      {HomePageChatbotContainerModel? homePageChatbotContainerModelObj}) {
    return HomePageChatbotContainerState(
      homePageChatbotContainerModelObj: homePageChatbotContainerModelObj ??
          this.homePageChatbotContainerModelObj,
    );
  }
}
