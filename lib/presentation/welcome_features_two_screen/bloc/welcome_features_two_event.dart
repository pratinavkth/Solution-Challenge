// ignore_for_file: must_be_immutable

part of 'welcome_features_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///WelcomeFeaturesTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class WelcomeFeaturesTwoEvent extends Equatable {}

/// Event that is dispatched when the WelcomeFeaturesTwo widget is first created.
class WelcomeFeaturesTwoInitialEvent extends WelcomeFeaturesTwoEvent {
  @override
  List<Object?> get props => [];
}
