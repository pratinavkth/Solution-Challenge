import '../models/mentalhealthassessmentgrid_item_model.dart';
import 'package:flutter/material.dart';
import 'package:pratinav_s_application9/core/app_export.dart';

// ignore: must_be_immutable
class MentalhealthassessmentgridItemWidget extends StatelessWidget {
  MentalhealthassessmentgridItemWidget(
    this.mentalhealthassessmentgridItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  MentalhealthassessmentgridItemModel mentalhealthassessmentgridItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 15.v,
      ),
      decoration: AppDecoration.outlineGray80001.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder32,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: mentalhealthassessmentgridItemModelObj
                ?.prescribedMedicationsImage,
            height: 24.adaptSize,
            width: 24.adaptSize,
          ),
          SizedBox(height: 69.v),
          SizedBox(
            width: 88.h,
            child: Text(
              mentalhealthassessmentgridItemModelObj.prescribedMedicationsText!,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.titleMediumBold,
            ),
          ),
        ],
      ),
    );
  }
}
