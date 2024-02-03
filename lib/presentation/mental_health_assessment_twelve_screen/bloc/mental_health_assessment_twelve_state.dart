// ignore_for_file: must_be_immutable

part of 'mental_health_assessment_twelve_bloc.dart';

/// Represents the state of MentalHealthAssessmentTwelve in the application.
class MentalHealthAssessmentTwelveState extends Equatable {
  MentalHealthAssessmentTwelveState({
    this.otpController,
    this.mentalHealthAssessmentTwelveModelObj,
  });

  TextEditingController? otpController;

  MentalHealthAssessmentTwelveModel? mentalHealthAssessmentTwelveModelObj;

  @override
  List<Object?> get props => [
        otpController,
        mentalHealthAssessmentTwelveModelObj,
      ];
  MentalHealthAssessmentTwelveState copyWith({
    TextEditingController? otpController,
    MentalHealthAssessmentTwelveModel? mentalHealthAssessmentTwelveModelObj,
  }) {
    return MentalHealthAssessmentTwelveState(
      otpController: otpController ?? this.otpController,
      mentalHealthAssessmentTwelveModelObj:
          mentalHealthAssessmentTwelveModelObj ??
              this.mentalHealthAssessmentTwelveModelObj,
    );
  }
}
