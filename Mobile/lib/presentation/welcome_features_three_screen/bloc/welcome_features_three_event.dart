// ignore_for_file: must_be_immutable

part of 'welcome_features_three_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///WelcomeFeaturesThree widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class WelcomeFeaturesThreeEvent extends Equatable {}

/// Event that is dispatched when the WelcomeFeaturesThree widget is first created.
class WelcomeFeaturesThreeInitialEvent extends WelcomeFeaturesThreeEvent {
  @override
  List<Object?> get props => [];
}
