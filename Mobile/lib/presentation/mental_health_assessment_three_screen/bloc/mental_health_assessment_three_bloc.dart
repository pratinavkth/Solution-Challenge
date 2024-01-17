import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:pratinav_s_application9/presentation/mental_health_assessment_three_screen/models/mental_health_assessment_three_model.dart';
part 'mental_health_assessment_three_event.dart';
part 'mental_health_assessment_three_state.dart';

/// A bloc that manages the state of a MentalHealthAssessmentThree according to the event that is dispatched to it.
class MentalHealthAssessmentThreeBloc extends Bloc<
    MentalHealthAssessmentThreeEvent, MentalHealthAssessmentThreeState> {
  MentalHealthAssessmentThreeBloc(MentalHealthAssessmentThreeState initialState)
      : super(initialState) {
    on<MentalHealthAssessmentThreeInitialEvent>(_onInitialize);
  }

  _onInitialize(
    MentalHealthAssessmentThreeInitialEvent event,
    Emitter<MentalHealthAssessmentThreeState> emit,
  ) async {}
}
