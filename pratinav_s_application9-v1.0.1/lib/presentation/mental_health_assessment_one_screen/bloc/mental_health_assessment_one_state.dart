// ignore_for_file: must_be_immutable

part of 'mental_health_assessment_one_bloc.dart';

/// Represents the state of MentalHealthAssessmentOne in the application.
class MentalHealthAssessmentOneState extends Equatable {
  MentalHealthAssessmentOneState({this.mentalHealthAssessmentOneModelObj});

  MentalHealthAssessmentOneModel? mentalHealthAssessmentOneModelObj;

  @override
  List<Object?> get props => [
        mentalHealthAssessmentOneModelObj,
      ];
  MentalHealthAssessmentOneState copyWith(
      {MentalHealthAssessmentOneModel? mentalHealthAssessmentOneModelObj}) {
    return MentalHealthAssessmentOneState(
      mentalHealthAssessmentOneModelObj: mentalHealthAssessmentOneModelObj ??
          this.mentalHealthAssessmentOneModelObj,
    );
  }
}
