import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/userprofile1_item_model.dart';
import 'package:pratinav_s_application9/presentation/mental_health_assessment_seven_screen/models/mental_health_assessment_seven_model.dart';
part 'mental_health_assessment_seven_event.dart';
part 'mental_health_assessment_seven_state.dart';

/// A bloc that manages the state of a MentalHealthAssessmentSeven according to the event that is dispatched to it.
class MentalHealthAssessmentSevenBloc extends Bloc<
    MentalHealthAssessmentSevenEvent, MentalHealthAssessmentSevenState> {
  MentalHealthAssessmentSevenBloc(MentalHealthAssessmentSevenState initialState)
      : super(initialState) {
    on<MentalHealthAssessmentSevenInitialEvent>(_onInitialize);
  }

  _onInitialize(
    MentalHealthAssessmentSevenInitialEvent event,
    Emitter<MentalHealthAssessmentSevenState> emit,
  ) async {
    emit(state.copyWith(
        mentalHealthAssessmentSevenModelObj: state
            .mentalHealthAssessmentSevenModelObj
            ?.copyWith(userprofile1ItemList: fillUserprofile1ItemList())));
  }

  List<Userprofile1ItemModel> fillUserprofile1ItemList() {
    return [
      Userprofile1ItemModel(
          arrowIcon: ImageConstant.imgSolidArrowRightPrimary,
          bodyText: "Yes, one or multiple",
          bodyText1:
              "I’m experiencing physical pain in different place over my body.",
          contrastImage: ImageConstant.imgContrastWhiteA70001),
      Userprofile1ItemModel(
          arrowIcon: ImageConstant.imgCloseWhiteA7000148x48,
          bodyText: "No Physical Pain At All",
          bodyText1:
              "I’m not experiencing any physical pain in my body at all :)",
          contrastImage: ImageConstant.imgContrastWhiteA7000124x24)
    ];
  }
}
