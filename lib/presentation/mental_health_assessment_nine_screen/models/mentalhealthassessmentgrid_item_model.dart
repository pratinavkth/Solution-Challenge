import '../../../core/app_export.dart';

/// This class is used in the [mentalhealthassessmentgrid_item_widget] screen.
class MentalhealthassessmentgridItemModel {
  MentalhealthassessmentgridItemModel({
    this.prescribedMedicationsImage,
    this.prescribedMedicationsText,
    this.id,
  }) {
    prescribedMedicationsImage =
        prescribedMedicationsImage ?? ImageConstant.imgThumbsUpWhiteA70001;
    prescribedMedicationsText =
        prescribedMedicationsText ?? "Prescribed Medications";
    id = id ?? "";
  }

  String? prescribedMedicationsImage;

  String? prescribedMedicationsText;

  String? id;
}
