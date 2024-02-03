// ignore_for_file: must_be_immutable

part of 'mental_health_assessment_four_tab_container_bloc.dart';

/// Represents the state of MentalHealthAssessmentFourTabContainer in the application.
class MentalHealthAssessmentFourTabContainerState extends Equatable {
  MentalHealthAssessmentFourTabContainerState(
      {this.mentalHealthAssessmentFourTabContainerModelObj});

  MentalHealthAssessmentFourTabContainerModel?
      mentalHealthAssessmentFourTabContainerModelObj;

  @override
  List<Object?> get props => [
        mentalHealthAssessmentFourTabContainerModelObj,
      ];
  MentalHealthAssessmentFourTabContainerState copyWith(
      {MentalHealthAssessmentFourTabContainerModel?
          mentalHealthAssessmentFourTabContainerModelObj}) {
    return MentalHealthAssessmentFourTabContainerState(
      mentalHealthAssessmentFourTabContainerModelObj:
          mentalHealthAssessmentFourTabContainerModelObj ??
              this.mentalHealthAssessmentFourTabContainerModelObj,
    );
  }
}
