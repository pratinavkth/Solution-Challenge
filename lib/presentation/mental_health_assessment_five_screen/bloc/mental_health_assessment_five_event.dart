// ignore_for_file: must_be_immutable

part of 'mental_health_assessment_five_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MentalHealthAssessmentFive widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MentalHealthAssessmentFiveEvent extends Equatable {}

/// Event that is dispatched when the MentalHealthAssessmentFive widget is first created.
class MentalHealthAssessmentFiveInitialEvent
    extends MentalHealthAssessmentFiveEvent {
  @override
  List<Object?> get props => [];
}
