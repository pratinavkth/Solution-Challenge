// ignore_for_file: must_be_immutable

part of 'mental_health_assessment_fourteen_bloc.dart';

/// Represents the state of MentalHealthAssessmentFourteen in the application.
class MentalHealthAssessmentFourteenState extends Equatable {
  MentalHealthAssessmentFourteenState(
      {this.mentalHealthAssessmentFourteenModelObj});

  MentalHealthAssessmentFourteenModel? mentalHealthAssessmentFourteenModelObj;

  @override
  List<Object?> get props => [
        mentalHealthAssessmentFourteenModelObj,
      ];
  MentalHealthAssessmentFourteenState copyWith(
      {MentalHealthAssessmentFourteenModel?
          mentalHealthAssessmentFourteenModelObj}) {
    return MentalHealthAssessmentFourteenState(
      mentalHealthAssessmentFourteenModelObj:
          mentalHealthAssessmentFourteenModelObj ??
              this.mentalHealthAssessmentFourteenModelObj,
    );
  }
}
