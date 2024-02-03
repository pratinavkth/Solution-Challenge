// ignore_for_file: must_be_immutable

part of 'home_page_chatbot_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///HomePageChatbotContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class HomePageChatbotContainerEvent extends Equatable {}

/// Event that is dispatched when the HomePageChatbotContainer widget is first created.
class HomePageChatbotContainerInitialEvent
    extends HomePageChatbotContainerEvent {
  @override
  List<Object?> get props => [];
}
