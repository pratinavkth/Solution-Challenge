import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/frame_item_model.dart';
import 'package:pratinav_s_application9/presentation/mental_health_assessment_eleven_screen/models/mental_health_assessment_eleven_model.dart';
part 'mental_health_assessment_eleven_event.dart';
part 'mental_health_assessment_eleven_state.dart';

/// A bloc that manages the state of a MentalHealthAssessmentEleven according to the event that is dispatched to it.
class MentalHealthAssessmentElevenBloc extends Bloc<
    MentalHealthAssessmentElevenEvent, MentalHealthAssessmentElevenState> {
  MentalHealthAssessmentElevenBloc(
      MentalHealthAssessmentElevenState initialState)
      : super(initialState) {
    on<MentalHealthAssessmentElevenInitialEvent>(_onInitialize);
    on<UpdateChipViewEvent>(_updateChipView);
  }

  _onInitialize(
    MentalHealthAssessmentElevenInitialEvent event,
    Emitter<MentalHealthAssessmentElevenState> emit,
  ) async {
    emit(state.copyWith(
        mentalHealthAssessmentElevenModelObj: state
            .mentalHealthAssessmentElevenModelObj
            ?.copyWith(frameItemList: fillFrameItemList())));
  }

  _updateChipView(
    UpdateChipViewEvent event,
    Emitter<MentalHealthAssessmentElevenState> emit,
  ) {
    List<FrameItemModel> newList = List<FrameItemModel>.from(
        state.mentalHealthAssessmentElevenModelObj!.frameItemList);
    newList[event.index] =
        newList[event.index].copyWith(isSelected: event.isSelected);
    emit(state.copyWith(
        mentalHealthAssessmentElevenModelObj: state
            .mentalHealthAssessmentElevenModelObj
            ?.copyWith(frameItemList: newList)));
  }

  List<FrameItemModel> fillFrameItemList() {
    return List.generate(4, (index) => FrameItemModel());
  }
}
