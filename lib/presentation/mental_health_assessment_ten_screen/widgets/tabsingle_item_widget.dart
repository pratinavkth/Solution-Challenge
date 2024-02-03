import '../models/tabsingle_item_model.dart';
import 'package:flutter/material.dart';
import 'package:pratinav_s_application9/core/app_export.dart';
import 'package:pratinav_s_application9/widgets/custom_elevated_button.dart';

// ignore: must_be_immutable
class TabsingleItemWidget extends StatelessWidget {
  TabsingleItemWidget(
    this.tabsingleItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  TabsingleItemModel tabsingleItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Container(
            decoration: AppDecoration.fillGray800.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder16,
            ),
            child: Row(
              children: [
                CustomElevatedButton(
                  height: 32.v,
                  width: 36.h,
                  text: "lbl_a".tr,
                  buttonStyle: CustomButtonStyles.outlineDeepOrangeF,
                  buttonTextStyle: CustomTextStyles.labelLargeWhiteA70001,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 14.h,
                    top: 8.v,
                    bottom: 8.v,
                  ),
                  child: Text(
                    tabsingleItemModelObj.dynamicProperty2!,
                    style: CustomTextStyles.labelLargeGray500_1,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 27.h,
                    top: 8.v,
                    bottom: 8.v,
                  ),
                  child: Text(
                    tabsingleItemModelObj.dynamicProperty3!,
                    style: CustomTextStyles.labelLargeGray500_1,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 27.h,
                    top: 11.v,
                    bottom: 5.v,
                  ),
                  child: Text(
                    tabsingleItemModelObj.dynamicProperty4!,
                    style: CustomTextStyles.labelLargeGray500_1,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 27.h,
                    top: 8.v,
                    bottom: 8.v,
                  ),
                  child: Text(
                    tabsingleItemModelObj.dynamicProperty5!,
                    style: CustomTextStyles.labelLargeGray500_1,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 27.h,
                    top: 8.v,
                    bottom: 8.v,
                  ),
                  child: Text(
                    tabsingleItemModelObj.dynamicProperty6!,
                    style: CustomTextStyles.labelLargeGray500_1,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 27.h,
                    top: 8.v,
                    bottom: 8.v,
                  ),
                  child: Text(
                    tabsingleItemModelObj.dynamicProperty7!,
                    style: CustomTextStyles.labelLargeGray500_1,
                  ),
                ),
              ],
            ),
          ),
        ),
        CustomImageView(
          imagePath: tabsingleItemModelObj?.dynamicProperty8,
          height: 24.adaptSize,
          width: 24.adaptSize,
          margin: EdgeInsets.only(
            left: 66.h,
            top: 4.v,
            bottom: 4.v,
          ),
        ),
      ],
    );
  }
}
