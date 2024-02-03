// ignore_for_file: must_be_immutable

part of 'mental_health_assessment_eight_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MentalHealthAssessmentEight widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MentalHealthAssessmentEightEvent extends Equatable {}

/// Event that is dispatched when the MentalHealthAssessmentEight widget is first created.
class MentalHealthAssessmentEightInitialEvent
    extends MentalHealthAssessmentEightEvent {
  @override
  List<Object?> get props => [];
}
