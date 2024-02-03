// ignore_for_file: must_be_immutable

part of 'loading_screen_interactive_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///LoadingScreenInteractive widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class LoadingScreenInteractiveEvent extends Equatable {}

/// Event that is dispatched when the LoadingScreenInteractive widget is first created.
class LoadingScreenInteractiveInitialEvent
    extends LoadingScreenInteractiveEvent {
  @override
  List<Object?> get props => [];
}
