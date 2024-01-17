// ignore_for_file: must_be_immutable

part of 'mental_health_assessment_seven_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MentalHealthAssessmentSeven widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MentalHealthAssessmentSevenEvent extends Equatable {}

/// Event that is dispatched when the MentalHealthAssessmentSeven widget is first created.
class MentalHealthAssessmentSevenInitialEvent
    extends MentalHealthAssessmentSevenEvent {
  @override
  List<Object?> get props => [];
}
