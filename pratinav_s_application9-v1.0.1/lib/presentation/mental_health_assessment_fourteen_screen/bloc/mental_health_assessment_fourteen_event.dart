// ignore_for_file: must_be_immutable

part of 'mental_health_assessment_fourteen_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MentalHealthAssessmentFourteen widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MentalHealthAssessmentFourteenEvent extends Equatable {}

/// Event that is dispatched when the MentalHealthAssessmentFourteen widget is first created.
class MentalHealthAssessmentFourteenInitialEvent
    extends MentalHealthAssessmentFourteenEvent {
  @override
  List<Object?> get props => [];
}
