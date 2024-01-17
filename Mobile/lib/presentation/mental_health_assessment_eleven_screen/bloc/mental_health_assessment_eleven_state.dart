// ignore_for_file: must_be_immutable

part of 'mental_health_assessment_eleven_bloc.dart';

/// Represents the state of MentalHealthAssessmentEleven in the application.
class MentalHealthAssessmentElevenState extends Equatable {
  MentalHealthAssessmentElevenState(
      {this.mentalHealthAssessmentElevenModelObj});

  MentalHealthAssessmentElevenModel? mentalHealthAssessmentElevenModelObj;

  @override
  List<Object?> get props => [
        mentalHealthAssessmentElevenModelObj,
      ];
  MentalHealthAssessmentElevenState copyWith(
      {MentalHealthAssessmentElevenModel?
          mentalHealthAssessmentElevenModelObj}) {
    return MentalHealthAssessmentElevenState(
      mentalHealthAssessmentElevenModelObj:
          mentalHealthAssessmentElevenModelObj ??
              this.mentalHealthAssessmentElevenModelObj,
    );
  }
}
