import '../../../core/app_export.dart';

/// This class is used in the [userprofile_item_widget] screen.
class UserprofileItemModel {
  UserprofileItemModel({
    this.isMale,
    this.moonImage,
    this.profileImage,
    this.id,
  }) {
    isMale = isMale ?? "I am Male";
    moonImage = moonImage ?? ImageConstant.imgSolidArrowRight;
    profileImage = profileImage ?? ImageConstant.imgGroupErrorcontainer;
    id = id ?? "";
  }

  String? isMale;

  String? moonImage;

  String? profileImage;

  String? id;
}
