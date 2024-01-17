// ignore_for_file: must_be_immutable

part of 'loading_screen_quote_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///LoadingScreenQuote widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class LoadingScreenQuoteEvent extends Equatable {}

/// Event that is dispatched when the LoadingScreenQuote widget is first created.
class LoadingScreenQuoteInitialEvent extends LoadingScreenQuoteEvent {
  @override
  List<Object?> get props => [];
}
