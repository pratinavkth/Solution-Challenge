import '../models/userprofile1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:pratinav_s_application9/core/app_export.dart';
import 'package:pratinav_s_application9/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class Userprofile1ItemWidget extends StatelessWidget {
  Userprofile1ItemWidget(
    this.userprofile1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Userprofile1ItemModel userprofile1ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 11.v,
      ),
      decoration: AppDecoration.outlineGray80001.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder32,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 4.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomIconButton(
                  height: 48.adaptSize,
                  width: 48.adaptSize,
                  padding: EdgeInsets.all(12.h),
                  decoration: IconButtonStyleHelper.fillGrayTL24,
                  child: CustomImageView(
                    imagePath: userprofile1ItemModelObj?.arrowIcon,
                  ),
                ),
                SizedBox(height: 17.v),
                Text(
                  userprofile1ItemModelObj.bodyText!,
                  style: CustomTextStyles.titleMediumBold_1,
                ),
                SizedBox(height: 5.v),
                SizedBox(
                  width: 224.h,
                  child: Text(
                    userprofile1ItemModelObj.bodyText1!,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.titleMediumGray400Medium.copyWith(
                      height: 1.60,
                    ),
                  ),
                ),
              ],
            ),
          ),
          CustomImageView(
            imagePath: userprofile1ItemModelObj?.contrastImage,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.symmetric(vertical: 63.v),
          ),
        ],
      ),
    );
  }
}
