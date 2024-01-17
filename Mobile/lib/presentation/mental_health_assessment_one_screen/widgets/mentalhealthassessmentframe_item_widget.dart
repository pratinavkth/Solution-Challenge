import '../models/mentalhealthassessmentframe_item_model.dart';
import 'package:flutter/material.dart';
import 'package:pratinav_s_application9/core/app_export.dart';

// ignore: must_be_immutable
class MentalhealthassessmentframeItemWidget extends StatelessWidget {
  MentalhealthassessmentframeItemWidget(
    this.mentalhealthassessmentframeItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  MentalhealthassessmentframeItemModel mentalhealthassessmentframeItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.h),
      decoration: AppDecoration.outlineGray80001.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder29,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: mentalhealthassessmentframeItemModelObj?.favoriteImage,
            height: 24.adaptSize,
            width: 24.adaptSize,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 8.h,
              bottom: 2.v,
            ),
            child: Text(
              mentalhealthassessmentframeItemModelObj.text!,
              style: CustomTextStyles.titleMediumBold,
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: mentalhealthassessmentframeItemModelObj?.contrastImage,
            height: 24.adaptSize,
            width: 24.adaptSize,
          ),
        ],
      ),
    );
  }
}
