// ignore_for_file: must_be_immutable

part of 'home_page_chatbot_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///HomePageChatbot widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class HomePageChatbotEvent extends Equatable {}

/// Event that is dispatched when the HomePageChatbot widget is first created.
class HomePageChatbotInitialEvent extends HomePageChatbotEvent {
  @override
  List<Object?> get props => [];
}
