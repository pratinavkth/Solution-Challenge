// ignore_for_file: must_be_immutable

part of 'mental_health_assessment_ten_bloc.dart';

/// Represents the state of MentalHealthAssessmentTen in the application.
class MentalHealthAssessmentTenState extends Equatable {
  MentalHealthAssessmentTenState({this.mentalHealthAssessmentTenModelObj});

  MentalHealthAssessmentTenModel? mentalHealthAssessmentTenModelObj;

  @override
  List<Object?> get props => [
        mentalHealthAssessmentTenModelObj,
      ];
  MentalHealthAssessmentTenState copyWith(
      {MentalHealthAssessmentTenModel? mentalHealthAssessmentTenModelObj}) {
    return MentalHealthAssessmentTenState(
      mentalHealthAssessmentTenModelObj: mentalHealthAssessmentTenModelObj ??
          this.mentalHealthAssessmentTenModelObj,
    );
  }
}
