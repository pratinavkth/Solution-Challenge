// ignore_for_file: must_be_immutable

part of 'mental_health_assessment_nine_bloc.dart';

/// Represents the state of MentalHealthAssessmentNine in the application.
class MentalHealthAssessmentNineState extends Equatable {
  MentalHealthAssessmentNineState({this.mentalHealthAssessmentNineModelObj});

  MentalHealthAssessmentNineModel? mentalHealthAssessmentNineModelObj;

  @override
  List<Object?> get props => [
        mentalHealthAssessmentNineModelObj,
      ];
  MentalHealthAssessmentNineState copyWith(
      {MentalHealthAssessmentNineModel? mentalHealthAssessmentNineModelObj}) {
    return MentalHealthAssessmentNineState(
      mentalHealthAssessmentNineModelObj: mentalHealthAssessmentNineModelObj ??
          this.mentalHealthAssessmentNineModelObj,
    );
  }
}
