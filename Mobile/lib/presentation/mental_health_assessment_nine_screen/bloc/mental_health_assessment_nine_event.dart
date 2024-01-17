// ignore_for_file: must_be_immutable

part of 'mental_health_assessment_nine_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MentalHealthAssessmentNine widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MentalHealthAssessmentNineEvent extends Equatable {}

/// Event that is dispatched when the MentalHealthAssessmentNine widget is first created.
class MentalHealthAssessmentNineInitialEvent
    extends MentalHealthAssessmentNineEvent {
  @override
  List<Object?> get props => [];
}
