// ignore_for_file: must_be_immutable

part of 'mental_health_assessment_four_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MentalHealthAssessmentFour widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MentalHealthAssessmentFourEvent extends Equatable {}

/// Event that is dispatched when the MentalHealthAssessmentFour widget is first created.
class MentalHealthAssessmentFourInitialEvent
    extends MentalHealthAssessmentFourEvent {
  @override
  List<Object?> get props => [];
}
