import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:pratinav_s_application9/presentation/mental_health_assessment_four_page/models/mental_health_assessment_four_model.dart';
part 'mental_health_assessment_four_event.dart';
part 'mental_health_assessment_four_state.dart';

/// A bloc that manages the state of a MentalHealthAssessmentFour according to the event that is dispatched to it.
class MentalHealthAssessmentFourBloc extends Bloc<
    MentalHealthAssessmentFourEvent, MentalHealthAssessmentFourState> {
  MentalHealthAssessmentFourBloc(MentalHealthAssessmentFourState initialState)
      : super(initialState) {
    on<MentalHealthAssessmentFourInitialEvent>(_onInitialize);
  }

  _onInitialize(
    MentalHealthAssessmentFourInitialEvent event,
    Emitter<MentalHealthAssessmentFourState> emit,
  ) async {}
}
