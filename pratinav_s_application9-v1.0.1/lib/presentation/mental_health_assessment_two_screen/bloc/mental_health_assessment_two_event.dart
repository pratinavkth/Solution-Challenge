// ignore_for_file: must_be_immutable

part of 'mental_health_assessment_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MentalHealthAssessmentTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MentalHealthAssessmentTwoEvent extends Equatable {}

/// Event that is dispatched when the MentalHealthAssessmentTwo widget is first created.
class MentalHealthAssessmentTwoInitialEvent
    extends MentalHealthAssessmentTwoEvent {
  @override
  List<Object?> get props => [];
}
