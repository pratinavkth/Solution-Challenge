// ignore_for_file: must_be_immutable

part of 'mental_health_assessment_four_tab_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MentalHealthAssessmentFourTabContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MentalHealthAssessmentFourTabContainerEvent extends Equatable {}

/// Event that is dispatched when the MentalHealthAssessmentFourTabContainer widget is first created.
class MentalHealthAssessmentFourTabContainerInitialEvent
    extends MentalHealthAssessmentFourTabContainerEvent {
  @override
  List<Object?> get props => [];
}
