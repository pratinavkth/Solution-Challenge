// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'mentalhealthassessmentgrid_item_model.dart';

/// This class defines the variables used in the [mental_health_assessment_nine_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class MentalHealthAssessmentNineModel extends Equatable {
  MentalHealthAssessmentNineModel(
      {this.mentalhealthassessmentgridItemList = const []}) {}

  List<MentalhealthassessmentgridItemModel> mentalhealthassessmentgridItemList;

  MentalHealthAssessmentNineModel copyWith(
      {List<MentalhealthassessmentgridItemModel>?
          mentalhealthassessmentgridItemList}) {
    return MentalHealthAssessmentNineModel(
      mentalhealthassessmentgridItemList: mentalhealthassessmentgridItemList ??
          this.mentalhealthassessmentgridItemList,
    );
  }

  @override
  List<Object?> get props => [mentalhealthassessmentgridItemList];
}
