// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'tabsingle_item_model.dart';

/// This class defines the variables used in the [mental_health_assessment_ten_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class MentalHealthAssessmentTenModel extends Equatable {
  MentalHealthAssessmentTenModel({this.tabsingleItemList = const []}) {}

  List<TabsingleItemModel> tabsingleItemList;

  MentalHealthAssessmentTenModel copyWith(
      {List<TabsingleItemModel>? tabsingleItemList}) {
    return MentalHealthAssessmentTenModel(
      tabsingleItemList: tabsingleItemList ?? this.tabsingleItemList,
    );
  }

  @override
  List<Object?> get props => [tabsingleItemList];
}
