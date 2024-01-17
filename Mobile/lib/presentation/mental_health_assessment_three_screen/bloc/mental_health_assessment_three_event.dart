// ignore_for_file: must_be_immutable

part of 'mental_health_assessment_three_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MentalHealthAssessmentThree widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MentalHealthAssessmentThreeEvent extends Equatable {}

/// Event that is dispatched when the MentalHealthAssessmentThree widget is first created.
class MentalHealthAssessmentThreeInitialEvent
    extends MentalHealthAssessmentThreeEvent {
  @override
  List<Object?> get props => [];
}
