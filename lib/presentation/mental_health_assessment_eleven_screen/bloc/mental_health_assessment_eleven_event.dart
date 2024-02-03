// ignore_for_file: must_be_immutable

part of 'mental_health_assessment_eleven_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MentalHealthAssessmentEleven widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MentalHealthAssessmentElevenEvent extends Equatable {}

/// Event that is dispatched when the MentalHealthAssessmentEleven widget is first created.
class MentalHealthAssessmentElevenInitialEvent
    extends MentalHealthAssessmentElevenEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing ChipView selection
class UpdateChipViewEvent extends MentalHealthAssessmentElevenEvent {
  UpdateChipViewEvent({
    required this.index,
    this.isSelected,
  });

  int index;

  bool? isSelected;

  @override
  List<Object?> get props => [
        index,
        isSelected,
      ];
}
