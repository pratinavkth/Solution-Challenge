// ignore_for_file: must_be_immutable

part of 'mental_health_assessment_two_bloc.dart';

/// Represents the state of MentalHealthAssessmentTwo in the application.
class MentalHealthAssessmentTwoState extends Equatable {
  MentalHealthAssessmentTwoState({this.mentalHealthAssessmentTwoModelObj});

  MentalHealthAssessmentTwoModel? mentalHealthAssessmentTwoModelObj;

  @override
  List<Object?> get props => [
        mentalHealthAssessmentTwoModelObj,
      ];
  MentalHealthAssessmentTwoState copyWith(
      {MentalHealthAssessmentTwoModel? mentalHealthAssessmentTwoModelObj}) {
    return MentalHealthAssessmentTwoState(
      mentalHealthAssessmentTwoModelObj: mentalHealthAssessmentTwoModelObj ??
          this.mentalHealthAssessmentTwoModelObj,
    );
  }
}
