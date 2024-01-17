// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'mentalhealthassessmentframe_item_model.dart';

/// This class defines the variables used in the [mental_health_assessment_one_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class MentalHealthAssessmentOneModel extends Equatable {
  MentalHealthAssessmentOneModel(
      {this.mentalhealthassessmentframeItemList = const []}) {}

  List<MentalhealthassessmentframeItemModel>
      mentalhealthassessmentframeItemList;

  MentalHealthAssessmentOneModel copyWith(
      {List<MentalhealthassessmentframeItemModel>?
          mentalhealthassessmentframeItemList}) {
    return MentalHealthAssessmentOneModel(
      mentalhealthassessmentframeItemList:
          mentalhealthassessmentframeItemList ??
              this.mentalhealthassessmentframeItemList,
    );
  }

  @override
  List<Object?> get props => [mentalhealthassessmentframeItemList];
}
