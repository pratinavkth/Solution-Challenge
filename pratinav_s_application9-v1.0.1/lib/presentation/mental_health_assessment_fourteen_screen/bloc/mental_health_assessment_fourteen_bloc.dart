import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:pratinav_s_application9/presentation/mental_health_assessment_fourteen_screen/models/mental_health_assessment_fourteen_model.dart';
part 'mental_health_assessment_fourteen_event.dart';
part 'mental_health_assessment_fourteen_state.dart';

/// A bloc that manages the state of a MentalHealthAssessmentFourteen according to the event that is dispatched to it.
class MentalHealthAssessmentFourteenBloc extends Bloc<
    MentalHealthAssessmentFourteenEvent, MentalHealthAssessmentFourteenState> {
  MentalHealthAssessmentFourteenBloc(
      MentalHealthAssessmentFourteenState initialState)
      : super(initialState) {
    on<MentalHealthAssessmentFourteenInitialEvent>(_onInitialize);
  }

  _onInitialize(
    MentalHealthAssessmentFourteenInitialEvent event,
    Emitter<MentalHealthAssessmentFourteenState> emit,
  ) async {}
}
