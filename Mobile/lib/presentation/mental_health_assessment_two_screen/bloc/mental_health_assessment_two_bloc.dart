import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/userprofile_item_model.dart';
import 'package:pratinav_s_application9/presentation/mental_health_assessment_two_screen/models/mental_health_assessment_two_model.dart';
part 'mental_health_assessment_two_event.dart';
part 'mental_health_assessment_two_state.dart';

/// A bloc that manages the state of a MentalHealthAssessmentTwo according to the event that is dispatched to it.
class MentalHealthAssessmentTwoBloc extends Bloc<MentalHealthAssessmentTwoEvent,
    MentalHealthAssessmentTwoState> {
  MentalHealthAssessmentTwoBloc(MentalHealthAssessmentTwoState initialState)
      : super(initialState) {
    on<MentalHealthAssessmentTwoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    MentalHealthAssessmentTwoInitialEvent event,
    Emitter<MentalHealthAssessmentTwoState> emit,
  ) async {
    emit(state.copyWith(
        mentalHealthAssessmentTwoModelObj: state
            .mentalHealthAssessmentTwoModelObj
            ?.copyWith(userprofileItemList: fillUserprofileItemList())));
  }

  List<UserprofileItemModel> fillUserprofileItemList() {
    return [
      UserprofileItemModel(
          isMale: "I am Male",
          moonImage: ImageConstant.imgSolidArrowRight,
          profileImage: ImageConstant.imgGroupErrorcontainer),
      UserprofileItemModel(
          isMale: "I am Female",
          moonImage: ImageConstant.imgLaptop,
          profileImage: ImageConstant.imgGroupErrorcontainer155x234)
    ];
  }
}
