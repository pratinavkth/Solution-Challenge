// ignore_for_file: must_be_immutable

part of 'welcome_features_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///WelcomeFeatures widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class WelcomeFeaturesEvent extends Equatable {}

/// Event that is dispatched when the WelcomeFeatures widget is first created.
class WelcomeFeaturesInitialEvent extends WelcomeFeaturesEvent {
  @override
  List<Object?> get props => [];
}
