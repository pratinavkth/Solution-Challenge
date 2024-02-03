import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:pratinav_s_application9/presentation/mental_health_assessment_eight_screen/models/mental_health_assessment_eight_model.dart';
part 'mental_health_assessment_eight_event.dart';
part 'mental_health_assessment_eight_state.dart';

/// A bloc that manages the state of a MentalHealthAssessmentEight according to the event that is dispatched to it.
class MentalHealthAssessmentEightBloc extends Bloc<
    MentalHealthAssessmentEightEvent, MentalHealthAssessmentEightState> {
  MentalHealthAssessmentEightBloc(MentalHealthAssessmentEightState initialState)
      : super(initialState) {
    on<MentalHealthAssessmentEightInitialEvent>(_onInitialize);
  }

  _onInitialize(
    MentalHealthAssessmentEightInitialEvent event,
    Emitter<MentalHealthAssessmentEightState> emit,
  ) async {}
}
