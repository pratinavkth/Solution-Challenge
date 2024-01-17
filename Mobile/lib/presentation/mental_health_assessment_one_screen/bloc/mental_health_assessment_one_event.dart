// ignore_for_file: must_be_immutable

part of 'mental_health_assessment_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MentalHealthAssessmentOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MentalHealthAssessmentOneEvent extends Equatable {}

/// Event that is dispatched when the MentalHealthAssessmentOne widget is first created.
class MentalHealthAssessmentOneInitialEvent
    extends MentalHealthAssessmentOneEvent {
  @override
  List<Object?> get props => [];
}
