import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:pratinav_s_application9/presentation/mental_health_assessment_twelve_screen/models/mental_health_assessment_twelve_model.dart';
import 'package:sms_autofill/sms_autofill.dart';
part 'mental_health_assessment_twelve_event.dart';
part 'mental_health_assessment_twelve_state.dart';

/// A bloc that manages the state of a MentalHealthAssessmentTwelve according to the event that is dispatched to it.
class MentalHealthAssessmentTwelveBloc extends Bloc<
    MentalHealthAssessmentTwelveEvent,
    MentalHealthAssessmentTwelveState> with CodeAutoFill {
  MentalHealthAssessmentTwelveBloc(
      MentalHealthAssessmentTwelveState initialState)
      : super(initialState) {
    on<MentalHealthAssessmentTwelveInitialEvent>(_onInitialize);
    on<ChangeOTPEvent>(_changeOTP);
  }

  @override
  codeUpdated() {
    add(ChangeOTPEvent(code: code!));
  }

  _changeOTP(
    ChangeOTPEvent event,
    Emitter<MentalHealthAssessmentTwelveState> emit,
  ) {
    emit(
        state.copyWith(otpController: TextEditingController(text: event.code)));
  }

  _onInitialize(
    MentalHealthAssessmentTwelveInitialEvent event,
    Emitter<MentalHealthAssessmentTwelveState> emit,
  ) async {
    emit(state.copyWith(otpController: TextEditingController()));
    listenForCode();
  }
}
