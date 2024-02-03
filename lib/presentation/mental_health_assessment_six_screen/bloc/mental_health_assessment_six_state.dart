// ignore_for_file: must_be_immutable

part of 'mental_health_assessment_six_bloc.dart';

/// Represents the state of MentalHealthAssessmentSix in the application.
class MentalHealthAssessmentSixState extends Equatable {
  MentalHealthAssessmentSixState({this.mentalHealthAssessmentSixModelObj});

  MentalHealthAssessmentSixModel? mentalHealthAssessmentSixModelObj;

  @override
  List<Object?> get props => [
        mentalHealthAssessmentSixModelObj,
      ];
  MentalHealthAssessmentSixState copyWith(
      {MentalHealthAssessmentSixModel? mentalHealthAssessmentSixModelObj}) {
    return MentalHealthAssessmentSixState(
      mentalHealthAssessmentSixModelObj: mentalHealthAssessmentSixModelObj ??
          this.mentalHealthAssessmentSixModelObj,
    );
  }
}
