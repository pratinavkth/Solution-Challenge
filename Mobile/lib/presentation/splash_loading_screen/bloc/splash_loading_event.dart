// ignore_for_file: must_be_immutable

part of 'splash_loading_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SplashLoading widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SplashLoadingEvent extends Equatable {}

/// Event that is dispatched when the SplashLoading widget is first created.
class SplashLoadingInitialEvent extends SplashLoadingEvent {
  @override
  List<Object?> get props => [];
}
