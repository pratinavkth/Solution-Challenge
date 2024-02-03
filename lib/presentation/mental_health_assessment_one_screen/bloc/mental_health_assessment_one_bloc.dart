import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/mentalhealthassessmentframe_item_model.dart';
import 'package:pratinav_s_application9/presentation/mental_health_assessment_one_screen/models/mental_health_assessment_one_model.dart';
part 'mental_health_assessment_one_event.dart';
part 'mental_health_assessment_one_state.dart';

/// A bloc that manages the state of a MentalHealthAssessmentOne according to the event that is dispatched to it.
class MentalHealthAssessmentOneBloc extends Bloc<MentalHealthAssessmentOneEvent,
    MentalHealthAssessmentOneState> {
  MentalHealthAssessmentOneBloc(MentalHealthAssessmentOneState initialState)
      : super(initialState) {
    on<MentalHealthAssessmentOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    MentalHealthAssessmentOneInitialEvent event,
    Emitter<MentalHealthAssessmentOneState> emit,
  ) async {
    emit(state.copyWith(
        mentalHealthAssessmentOneModelObj:
            state.mentalHealthAssessmentOneModelObj?.copyWith(
                mentalhealthassessmentframeItemList:
                    fillMentalhealthassessmentframeItemList())));
  }

  List<MentalhealthassessmentframeItemModel>
      fillMentalhealthassessmentframeItemList() {
    return [
      MentalhealthassessmentframeItemModel(
          favoriteImage: ImageConstant.imgFavorite,
          text: "I wanna reduce stress",
          contrastImage: ImageConstant.imgContrastWhiteA70001),
      MentalhealthassessmentframeItemModel(
          favoriteImage: ImageConstant.imgSolidRobot,
          text: "I wanna try AI Therapy",
          contrastImage: ImageConstant.imgMonotoneCheckbox),
      MentalhealthassessmentframeItemModel(
          favoriteImage: ImageConstant.imgSolidFlag,
          text: "I want to cope with trauma",
          contrastImage: ImageConstant.imgContrastWhiteA70001),
      MentalhealthassessmentframeItemModel(
          favoriteImage: ImageConstant.imgUserGray600,
          text: "I want to be a better person",
          contrastImage: ImageConstant.imgContrastWhiteA70001),
      MentalhealthassessmentframeItemModel(
          favoriteImage: ImageConstant.imgThumbsUpGray600,
          text: "Just trying out the app, mate!",
          contrastImage: ImageConstant.imgContrastWhiteA70001)
    ];
  }
}
