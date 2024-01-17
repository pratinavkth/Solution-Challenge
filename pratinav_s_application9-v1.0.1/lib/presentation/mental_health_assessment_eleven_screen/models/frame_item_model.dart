// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class is used in the [frame_item_widget] screen.
class FrameItemModel extends Equatable {
  FrameItemModel({
    this.tagMaster,
    this.isSelected,
  }) {
    tagMaster = tagMaster ?? "Social Withdrawl";
    isSelected = isSelected ?? false;
  }

  String? tagMaster;

  bool? isSelected;

  FrameItemModel copyWith({
    String? tagMaster,
    bool? isSelected,
  }) {
    return FrameItemModel(
      tagMaster: tagMaster ?? this.tagMaster,
      isSelected: isSelected ?? this.isSelected,
    );
  }

  @override
  List<Object?> get props => [tagMaster, isSelected];
}
