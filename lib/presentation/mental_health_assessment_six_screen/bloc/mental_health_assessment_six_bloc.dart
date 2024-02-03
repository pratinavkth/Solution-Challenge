import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:pratinav_s_application9/presentation/mental_health_assessment_six_screen/models/mental_health_assessment_six_model.dart';
part 'mental_health_assessment_six_event.dart';
part 'mental_health_assessment_six_state.dart';

/// A bloc that manages the state of a MentalHealthAssessmentSix according to the event that is dispatched to it.
class MentalHealthAssessmentSixBloc extends Bloc<MentalHealthAssessmentSixEvent,
    MentalHealthAssessmentSixState> {
  MentalHealthAssessmentSixBloc(MentalHealthAssessmentSixState initialState)
      : super(initialState) {
    on<MentalHealthAssessmentSixInitialEvent>(_onInitialize);
  }

  _onInitialize(
    MentalHealthAssessmentSixInitialEvent event,
    Emitter<MentalHealthAssessmentSixState> emit,
  ) async {}
}
