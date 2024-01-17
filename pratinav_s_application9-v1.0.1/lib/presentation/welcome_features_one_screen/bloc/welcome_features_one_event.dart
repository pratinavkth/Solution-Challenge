// ignore_for_file: must_be_immutable

part of 'welcome_features_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///WelcomeFeaturesOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class WelcomeFeaturesOneEvent extends Equatable {}

/// Event that is dispatched when the WelcomeFeaturesOne widget is first created.
class WelcomeFeaturesOneInitialEvent extends WelcomeFeaturesOneEvent {
  @override
  List<Object?> get props => [];
}
