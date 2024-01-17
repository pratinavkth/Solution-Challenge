// ignore_for_file: must_be_immutable

part of 'mental_health_assessment_eight_bloc.dart';

/// Represents the state of MentalHealthAssessmentEight in the application.
class MentalHealthAssessmentEightState extends Equatable {
  MentalHealthAssessmentEightState({this.mentalHealthAssessmentEightModelObj});

  MentalHealthAssessmentEightModel? mentalHealthAssessmentEightModelObj;

  @override
  List<Object?> get props => [
        mentalHealthAssessmentEightModelObj,
      ];
  MentalHealthAssessmentEightState copyWith(
      {MentalHealthAssessmentEightModel? mentalHealthAssessmentEightModelObj}) {
    return MentalHealthAssessmentEightState(
      mentalHealthAssessmentEightModelObj:
          mentalHealthAssessmentEightModelObj ??
              this.mentalHealthAssessmentEightModelObj,
    );
  }
}
