import 'bloc/mental_health_assessment_three_bloc.dart';
import 'models/mental_health_assessment_three_model.dart';
import 'package:flutter/material.dart';
import 'package:pratinav_s_application9/core/app_export.dart';
import 'package:pratinav_s_application9/widgets/app_bar/appbar_leading_iconbutton_one.dart';
import 'package:pratinav_s_application9/widgets/app_bar/appbar_title.dart';
import 'package:pratinav_s_application9/widgets/app_bar/appbar_trailing_button.dart';
import 'package:pratinav_s_application9/widgets/app_bar/custom_app_bar.dart';
import 'package:pratinav_s_application9/widgets/custom_elevated_button.dart';

class MentalHealthAssessmentThreeScreen extends StatelessWidget {
  const MentalHealthAssessmentThreeScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<MentalHealthAssessmentThreeBloc>(
        create: (context) => MentalHealthAssessmentThreeBloc(
            MentalHealthAssessmentThreeState(
                mentalHealthAssessmentThreeModelObj:
                    MentalHealthAssessmentThreeModel()))
          ..add(MentalHealthAssessmentThreeInitialEvent()),
        child: MentalHealthAssessmentThreeScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MentalHealthAssessmentThreeBloc,
        MentalHealthAssessmentThreeState>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              appBar: _buildAppBar(context),
              body: Container(
                  width: double.maxFinite,
                  padding:
                      EdgeInsets.symmetric(horizontal: 59.h, vertical: 40.v),
                  child: Column(children: [
                    Text("msg_what_s_your_age".tr,
                        style: theme.textTheme.headlineLarge),
                    SizedBox(height: 47.v),
                    Text("lbl_16".tr,
                        style: CustomTextStyles.headlineLargeGray800),
                    SizedBox(height: 6.v),
                    Text("lbl_17".tr, style: theme.textTheme.displayLarge),
                    SizedBox(height: 6.v),
                    Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 68.h, vertical: 1.v),
                        decoration: AppDecoration.outlineLightgreen50,
                        child: Text("lbl_18".tr,
                            style: CustomTextStyles.urbanistWhiteA70001)),
                    SizedBox(height: 5.v),
                    Text("lbl_19".tr, style: theme.textTheme.displayLarge),
                    SizedBox(height: 7.v),
                    Text("lbl_20".tr,
                        style: CustomTextStyles.headlineLargeGray800),
                    SizedBox(height: 8.v)
                  ])),
              bottomNavigationBar: _buildContinueButton(context)));
    });
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 64.h,
        leading: AppbarLeadingIconbuttonOne(
            imagePath: ImageConstant.imgContrast,
            margin: EdgeInsets.only(left: 16.h, top: 4.v, bottom: 4.v),
            onTap: () {
              onTapContrast(context);
            }),
        title: AppbarTitle(
            text: "lbl_assessment".tr, margin: EdgeInsets.only(left: 12.h)),
        actions: [
          AppbarTrailingButton(
              margin: EdgeInsets.symmetric(horizontal: 16.h, vertical: 13.v))
        ]);
  }

  /// Section Widget
  Widget _buildContinueButton(BuildContext context) {
    return CustomElevatedButton(
        text: "lbl_continue".tr,
        margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 70.v),
        rightIcon: Container(
            margin: EdgeInsets.only(left: 16.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgArrowleftWhiteA70001,
                height: 24.adaptSize,
                width: 24.adaptSize)),
        onPressed: () {
          onTapContinueButton(context);
        });
  }

  /// Navigates to the mentalHealthAssessmentTwoScreen when the action is triggered.
  onTapContrast(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.mentalHealthAssessmentTwoScreen,
    );
  }

  /// Navigates to the mentalHealthAssessmentFourTabContainerScreen when the action is triggered.
  onTapContinueButton(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.mentalHealthAssessmentFourTabContainerScreen,
    );
  }
}
