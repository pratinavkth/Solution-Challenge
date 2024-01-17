// ignore_for_file: must_be_immutable

part of 'mental_health_assessment_twelve_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MentalHealthAssessmentTwelve widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MentalHealthAssessmentTwelveEvent extends Equatable {}

/// Event that is dispatched when the MentalHealthAssessmentTwelve widget is first created.
class MentalHealthAssessmentTwelveInitialEvent
    extends MentalHealthAssessmentTwelveEvent {
  @override
  List<Object?> get props => [];
}

///event for OTP auto fill
class ChangeOTPEvent extends MentalHealthAssessmentTwelveEvent {
  ChangeOTPEvent({required this.code});

  String code;

  @override
  List<Object?> get props => [
        code,
      ];
}
