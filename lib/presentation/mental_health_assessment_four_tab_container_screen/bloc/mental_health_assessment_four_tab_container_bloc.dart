import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:pratinav_s_application9/presentation/mental_health_assessment_four_tab_container_screen/models/mental_health_assessment_four_tab_container_model.dart';
part 'mental_health_assessment_four_tab_container_event.dart';
part 'mental_health_assessment_four_tab_container_state.dart';

/// A bloc that manages the state of a MentalHealthAssessmentFourTabContainer according to the event that is dispatched to it.
class MentalHealthAssessmentFourTabContainerBloc extends Bloc<
    MentalHealthAssessmentFourTabContainerEvent,
    MentalHealthAssessmentFourTabContainerState> {
  MentalHealthAssessmentFourTabContainerBloc(
      MentalHealthAssessmentFourTabContainerState initialState)
      : super(initialState) {
    on<MentalHealthAssessmentFourTabContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    MentalHealthAssessmentFourTabContainerInitialEvent event,
    Emitter<MentalHealthAssessmentFourTabContainerState> emit,
  ) async {}
}
