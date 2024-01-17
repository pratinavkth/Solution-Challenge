import 'bloc/mental_health_assessment_eight_bloc.dart';
import 'models/mental_health_assessment_eight_model.dart';
import 'package:flutter/material.dart';
import 'package:pratinav_s_application9/core/app_export.dart';
import 'package:pratinav_s_application9/widgets/app_bar/appbar_leading_iconbutton_one.dart';
import 'package:pratinav_s_application9/widgets/app_bar/appbar_title.dart';
import 'package:pratinav_s_application9/widgets/app_bar/appbar_trailing_button.dart';
import 'package:pratinav_s_application9/widgets/app_bar/custom_app_bar.dart';
import 'package:pratinav_s_application9/widgets/custom_icon_button.dart';

class MentalHealthAssessmentEightScreen extends StatelessWidget {
  const MentalHealthAssessmentEightScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<MentalHealthAssessmentEightBloc>(
      create: (context) =>
          MentalHealthAssessmentEightBloc(MentalHealthAssessmentEightState(
        mentalHealthAssessmentEightModelObj: MentalHealthAssessmentEightModel(),
      ))
            ..add(MentalHealthAssessmentEightInitialEvent()),
      child: MentalHealthAssessmentEightScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MentalHealthAssessmentEightBloc,
        MentalHealthAssessmentEightState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
              width: double.maxFinite,
              padding: EdgeInsets.all(36.h),
              child: Column(
                children: [
                  Container(
                    width: 267.h,
                    margin: EdgeInsets.only(
                      left: 19.h,
                      right: 16.h,
                    ),
                    child: Text(
                      "msg_how_would_you_rate".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: theme.textTheme.headlineLarge!.copyWith(
                        height: 1.27,
                      ),
                    ),
                  ),
                  SizedBox(height: 46.v),
                  SizedBox(
                    height: 443.v,
                    width: 302.h,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              _buildHowWouldYouRateFrame1(context),
                              SizedBox(height: 48.v),
                              _buildHowWouldYouRateFrame3(
                                context,
                                excellent: "lbl_good".tr,
                                mobile: ImageConstant.imgMobileGray700,
                                duration: "lbl_6_7_hours".tr,
                              ),
                              SizedBox(height: 48.v),
                              _buildHowWouldYouRateFrame2(context),
                              SizedBox(height: 48.v),
                              _buildHowWouldYouRateFrame3(
                                context,
                                excellent: "lbl_poor".tr,
                                mobile: ImageConstant.imgMobileGray500,
                                duration: "lbl_3_4_hours".tr,
                              ),
                              SizedBox(height: 48.v),
                              _buildHowWouldYouRateFrame6(context),
                            ],
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 143.h),
                            decoration: AppDecoration.fillGray80003.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder8,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                SizedBox(height: 323.v),
                                Container(
                                  height: 120.v,
                                  width: 16.h,
                                  decoration: BoxDecoration(
                                    color: appTheme.orange900,
                                    borderRadius: BorderRadius.circular(
                                      8.h,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 88.v),
                          child: CustomIconButton(
                            height: 64.adaptSize,
                            width: 64.adaptSize,
                            padding: EdgeInsets.all(20.h),
                            decoration:
                                IconButtonStyleHelper.outlineDeepOrangeF,
                            alignment: Alignment.bottomCenter,
                            child: CustomImageView(
                              imagePath: ImageConstant.imgUserWhiteA70001,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 5.v),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 64.h,
      leading: AppbarLeadingIconbuttonOne(
        imagePath: ImageConstant.imgContrast,
        margin: EdgeInsets.only(
          left: 16.h,
          top: 4.v,
          bottom: 4.v,
        ),
      ),
      title: AppbarTitle(
        text: "lbl_assessment".tr,
        margin: EdgeInsets.only(left: 12.h),
      ),
      actions: [
        AppbarTrailingButton(
          margin: EdgeInsets.symmetric(
            horizontal: 16.h,
            vertical: 13.v,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildHowWouldYouRateFrame1(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 1.v),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "lbl_excellent".tr,
                style: CustomTextStyles.titleMediumGray600,
              ),
              SizedBox(height: 8.v),
              Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgMobileGray700,
                    height: 16.adaptSize,
                    width: 16.adaptSize,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 4.h),
                    child: Text(
                      "lbl_7_9_hours".tr.toUpperCase(),
                      style: CustomTextStyles.labelLargeGray700,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgSolidMoodOverjoyed,
          height: 48.adaptSize,
          width: 48.adaptSize,
          radius: BorderRadius.circular(
            24.h,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildHowWouldYouRateFrame2(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 1.v),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "lbl_fair".tr,
                style: CustomTextStyles.titleMediumGray600,
              ),
              SizedBox(height: 8.v),
              Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgMobileGray700,
                    height: 16.adaptSize,
                    width: 16.adaptSize,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 4.h),
                    child: Text(
                      "lbl_5_hours".tr.toUpperCase(),
                      style: CustomTextStyles.labelLargeGray700,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgUserGray50001,
          height: 48.adaptSize,
          width: 48.adaptSize,
          radius: BorderRadius.circular(
            24.h,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildHowWouldYouRateFrame6(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 1.v),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "lbl_worst".tr,
                style: CustomTextStyles.titleMediumGray600,
              ),
              SizedBox(height: 8.v),
              Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgMobileGray700,
                    height: 16.adaptSize,
                    width: 16.adaptSize,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 4.h),
                    child: Text(
                      "lbl_3_hours".tr.toUpperCase(),
                      style: CustomTextStyles.labelLargeGray700,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgSolidMoodDepressed,
          height: 48.adaptSize,
          width: 48.adaptSize,
          radius: BorderRadius.circular(
            24.h,
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildHowWouldYouRateFrame3(
    BuildContext context, {
    required String excellent,
    required String mobile,
    required String duration,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 1.v),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                excellent,
                style: theme.textTheme.titleMedium!.copyWith(
                  color: appTheme.whiteA70001,
                ),
              ),
              SizedBox(height: 8.v),
              Row(
                children: [
                  CustomImageView(
                    imagePath: mobile,
                    height: 16.adaptSize,
                    width: 16.adaptSize,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 4.h),
                    child: Text(
                      duration,
                      style: CustomTextStyles.labelLargeGray500.copyWith(
                        color: appTheme.gray500,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgSettingsYellow90001,
          height: 48.adaptSize,
          width: 48.adaptSize,
          radius: BorderRadius.circular(
            24.h,
          ),
        ),
      ],
    );
  }
}
