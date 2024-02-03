import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:pratinav_s_application9/presentation/mental_health_assessment_five_screen/models/mental_health_assessment_five_model.dart';
part 'mental_health_assessment_five_event.dart';
part 'mental_health_assessment_five_state.dart';

/// A bloc that manages the state of a MentalHealthAssessmentFive according to the event that is dispatched to it.
class MentalHealthAssessmentFiveBloc extends Bloc<
    MentalHealthAssessmentFiveEvent, MentalHealthAssessmentFiveState> {
  MentalHealthAssessmentFiveBloc(MentalHealthAssessmentFiveState initialState)
      : super(initialState) {
    on<MentalHealthAssessmentFiveInitialEvent>(_onInitialize);
  }

  _onInitialize(
    MentalHealthAssessmentFiveInitialEvent event,
    Emitter<MentalHealthAssessmentFiveState> emit,
  ) async {}
}
