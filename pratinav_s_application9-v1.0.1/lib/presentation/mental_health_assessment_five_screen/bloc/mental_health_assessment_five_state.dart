// ignore_for_file: must_be_immutable

part of 'mental_health_assessment_five_bloc.dart';

/// Represents the state of MentalHealthAssessmentFive in the application.
class MentalHealthAssessmentFiveState extends Equatable {
  MentalHealthAssessmentFiveState({this.mentalHealthAssessmentFiveModelObj});

  MentalHealthAssessmentFiveModel? mentalHealthAssessmentFiveModelObj;

  @override
  List<Object?> get props => [
        mentalHealthAssessmentFiveModelObj,
      ];
  MentalHealthAssessmentFiveState copyWith(
      {MentalHealthAssessmentFiveModel? mentalHealthAssessmentFiveModelObj}) {
    return MentalHealthAssessmentFiveState(
      mentalHealthAssessmentFiveModelObj: mentalHealthAssessmentFiveModelObj ??
          this.mentalHealthAssessmentFiveModelObj,
    );
  }
}
