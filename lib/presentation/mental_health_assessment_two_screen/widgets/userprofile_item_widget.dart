import '../models/userprofile_item_model.dart';
import 'package:flutter/material.dart';
import 'package:pratinav_s_application9/core/app_export.dart';

// ignore: must_be_immutable
class UserprofileItemWidget extends StatelessWidget {
  UserprofileItemWidget(
    this.userprofileItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  UserprofileItemModel userprofileItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.outlineWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder32,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 15.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  userprofileItemModelObj.isMale!,
                  style: CustomTextStyles.titleMedium16_1,
                ),
                SizedBox(height: 79.v),
                CustomImageView(
                  imagePath: userprofileItemModelObj?.moonImage,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                ),
              ],
            ),
          ),
          CustomImageView(
            imagePath: userprofileItemModelObj?.profileImage,
            height: 155.v,
            width: 238.h,
            margin: EdgeInsets.only(left: 15.h),
          ),
        ],
      ),
    );
  }
}
