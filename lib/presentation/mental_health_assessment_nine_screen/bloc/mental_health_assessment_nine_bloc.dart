import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/mentalhealthassessmentgrid_item_model.dart';
import 'package:pratinav_s_application9/presentation/mental_health_assessment_nine_screen/models/mental_health_assessment_nine_model.dart';
part 'mental_health_assessment_nine_event.dart';
part 'mental_health_assessment_nine_state.dart';

/// A bloc that manages the state of a MentalHealthAssessmentNine according to the event that is dispatched to it.
class MentalHealthAssessmentNineBloc extends Bloc<
    MentalHealthAssessmentNineEvent, MentalHealthAssessmentNineState> {
  MentalHealthAssessmentNineBloc(MentalHealthAssessmentNineState initialState)
      : super(initialState) {
    on<MentalHealthAssessmentNineInitialEvent>(_onInitialize);
  }

  _onInitialize(
    MentalHealthAssessmentNineInitialEvent event,
    Emitter<MentalHealthAssessmentNineState> emit,
  ) async {
    emit(state.copyWith(
        mentalHealthAssessmentNineModelObj:
            state.mentalHealthAssessmentNineModelObj?.copyWith(
                mentalhealthassessmentgridItemList:
                    fillMentalhealthassessmentgridItemList())));
  }

  List<MentalhealthassessmentgridItemModel>
      fillMentalhealthassessmentgridItemList() {
    return [
      MentalhealthassessmentgridItemModel(
          prescribedMedicationsImage: ImageConstant.imgThumbsUpWhiteA70001,
          prescribedMedicationsText: "Prescribed Medications"),
      MentalhealthassessmentgridItemModel(
          prescribedMedicationsImage: ImageConstant.imgTelevisionWhiteA70001,
          prescribedMedicationsText: "Over the Counter Supplements"),
      MentalhealthassessmentgridItemModel(
          prescribedMedicationsImage: ImageConstant.imgContrast24x24,
          prescribedMedicationsText: "I’m not taking any"),
      MentalhealthassessmentgridItemModel(
          prescribedMedicationsImage: ImageConstant.imgCloseWhiteA7000148x48,
          prescribedMedicationsText: "Prefer not to say")
    ];
  }
}
