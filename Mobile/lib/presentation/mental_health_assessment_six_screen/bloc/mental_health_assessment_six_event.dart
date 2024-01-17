// ignore_for_file: must_be_immutable

part of 'mental_health_assessment_six_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MentalHealthAssessmentSix widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MentalHealthAssessmentSixEvent extends Equatable {}

/// Event that is dispatched when the MentalHealthAssessmentSix widget is first created.
class MentalHealthAssessmentSixInitialEvent
    extends MentalHealthAssessmentSixEvent {
  @override
  List<Object?> get props => [];
}
