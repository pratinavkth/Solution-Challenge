// ignore_for_file: must_be_immutable

part of 'mental_health_assessment_ten_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MentalHealthAssessmentTen widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MentalHealthAssessmentTenEvent extends Equatable {}

/// Event that is dispatched when the MentalHealthAssessmentTen widget is first created.
class MentalHealthAssessmentTenInitialEvent
    extends MentalHealthAssessmentTenEvent {
  @override
  List<Object?> get props => [];
}
