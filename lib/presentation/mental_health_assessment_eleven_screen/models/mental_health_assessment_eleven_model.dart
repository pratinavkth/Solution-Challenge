// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'frame_item_model.dart';

/// This class defines the variables used in the [mental_health_assessment_eleven_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class MentalHealthAssessmentElevenModel extends Equatable {
  MentalHealthAssessmentElevenModel({this.frameItemList = const []}) {}

  List<FrameItemModel> frameItemList;

  MentalHealthAssessmentElevenModel copyWith(
      {List<FrameItemModel>? frameItemList}) {
    return MentalHealthAssessmentElevenModel(
      frameItemList: frameItemList ?? this.frameItemList,
    );
  }

  @override
  List<Object?> get props => [frameItemList];
}
