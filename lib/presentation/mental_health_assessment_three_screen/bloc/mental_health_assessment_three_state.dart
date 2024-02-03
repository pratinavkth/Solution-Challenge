// ignore_for_file: must_be_immutable

part of 'mental_health_assessment_three_bloc.dart';

/// Represents the state of MentalHealthAssessmentThree in the application.
class MentalHealthAssessmentThreeState extends Equatable {
  MentalHealthAssessmentThreeState({this.mentalHealthAssessmentThreeModelObj});

  MentalHealthAssessmentThreeModel? mentalHealthAssessmentThreeModelObj;

  @override
  List<Object?> get props => [
        mentalHealthAssessmentThreeModelObj,
      ];
  MentalHealthAssessmentThreeState copyWith(
      {MentalHealthAssessmentThreeModel? mentalHealthAssessmentThreeModelObj}) {
    return MentalHealthAssessmentThreeState(
      mentalHealthAssessmentThreeModelObj:
          mentalHealthAssessmentThreeModelObj ??
              this.mentalHealthAssessmentThreeModelObj,
    );
  }
}
