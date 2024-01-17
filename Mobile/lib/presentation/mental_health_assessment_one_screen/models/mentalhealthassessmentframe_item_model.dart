import '../../../core/app_export.dart';

/// This class is used in the [mentalhealthassessmentframe_item_widget] screen.
class MentalhealthassessmentframeItemModel {
  MentalhealthassessmentframeItemModel({
    this.favoriteImage,
    this.text,
    this.contrastImage,
    this.id,
  }) {
    favoriteImage = favoriteImage ?? ImageConstant.imgFavorite;
    text = text ?? "I wanna reduce stress";
    contrastImage = contrastImage ?? ImageConstant.imgContrastWhiteA70001;
    id = id ?? "";
  }

  String? favoriteImage;

  String? text;

  String? contrastImage;

  String? id;
}
