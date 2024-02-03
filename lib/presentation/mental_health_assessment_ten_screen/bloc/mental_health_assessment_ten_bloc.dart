import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/tabsingle_item_model.dart';
import 'package:pratinav_s_application9/presentation/mental_health_assessment_ten_screen/models/mental_health_assessment_ten_model.dart';
part 'mental_health_assessment_ten_event.dart';
part 'mental_health_assessment_ten_state.dart';

/// A bloc that manages the state of a MentalHealthAssessmentTen according to the event that is dispatched to it.
class MentalHealthAssessmentTenBloc extends Bloc<MentalHealthAssessmentTenEvent,
    MentalHealthAssessmentTenState> {
  MentalHealthAssessmentTenBloc(MentalHealthAssessmentTenState initialState)
      : super(initialState) {
    on<MentalHealthAssessmentTenInitialEvent>(_onInitialize);
  }

  _onInitialize(
    MentalHealthAssessmentTenInitialEvent event,
    Emitter<MentalHealthAssessmentTenState> emit,
  ) async {
    emit(state.copyWith(
        mentalHealthAssessmentTenModelObj: state
            .mentalHealthAssessmentTenModelObj
            ?.copyWith(tabsingleItemList: fillTabsingleItemList())));
  }

  List<TabsingleItemModel> fillTabsingleItemList() {
    return [
      TabsingleItemModel(
          dynamicProperty2: "B",
          dynamicProperty3: "C",
          dynamicProperty4: "...",
          dynamicProperty5: "X",
          dynamicProperty6: "Y",
          dynamicProperty7: "Z",
          dynamicProperty8: ImageConstant.imgRewindGray600)
    ];
  }
}
