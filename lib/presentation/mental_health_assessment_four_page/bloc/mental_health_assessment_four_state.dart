// ignore_for_file: must_be_immutable

part of 'mental_health_assessment_four_bloc.dart';

/// Represents the state of MentalHealthAssessmentFour in the application.
class MentalHealthAssessmentFourState extends Equatable {
  MentalHealthAssessmentFourState({this.mentalHealthAssessmentFourModelObj});

  MentalHealthAssessmentFourModel? mentalHealthAssessmentFourModelObj;

  @override
  List<Object?> get props => [
        mentalHealthAssessmentFourModelObj,
      ];
  MentalHealthAssessmentFourState copyWith(
      {MentalHealthAssessmentFourModel? mentalHealthAssessmentFourModelObj}) {
    return MentalHealthAssessmentFourState(
      mentalHealthAssessmentFourModelObj: mentalHealthAssessmentFourModelObj ??
          this.mentalHealthAssessmentFourModelObj,
    );
  }
}
