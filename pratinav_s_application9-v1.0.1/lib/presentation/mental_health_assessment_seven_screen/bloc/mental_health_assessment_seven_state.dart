// ignore_for_file: must_be_immutable

part of 'mental_health_assessment_seven_bloc.dart';

/// Represents the state of MentalHealthAssessmentSeven in the application.
class MentalHealthAssessmentSevenState extends Equatable {
  MentalHealthAssessmentSevenState({this.mentalHealthAssessmentSevenModelObj});

  MentalHealthAssessmentSevenModel? mentalHealthAssessmentSevenModelObj;

  @override
  List<Object?> get props => [
        mentalHealthAssessmentSevenModelObj,
      ];
  MentalHealthAssessmentSevenState copyWith(
      {MentalHealthAssessmentSevenModel? mentalHealthAssessmentSevenModelObj}) {
    return MentalHealthAssessmentSevenState(
      mentalHealthAssessmentSevenModelObj:
          mentalHealthAssessmentSevenModelObj ??
              this.mentalHealthAssessmentSevenModelObj,
    );
  }
}
