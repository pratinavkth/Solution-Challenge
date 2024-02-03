import '../../../core/app_export.dart';

/// This class is used in the [userprofile1_item_widget] screen.
class Userprofile1ItemModel {
  Userprofile1ItemModel({
    this.arrowIcon,
    this.bodyText,
    this.bodyText1,
    this.contrastImage,
    this.id,
  }) {
    arrowIcon = arrowIcon ?? ImageConstant.imgSolidArrowRightPrimary;
    bodyText = bodyText ?? "Yes, one or multiple";
    bodyText1 = bodyText1 ??
        "I’m experiencing physical pain in different place over my body.";
    contrastImage = contrastImage ?? ImageConstant.imgContrastWhiteA70001;
    id = id ?? "";
  }

  String? arrowIcon;

  String? bodyText;

  String? bodyText1;

  String? contrastImage;

  String? id;
}
