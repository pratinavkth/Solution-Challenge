import 'bloc/mental_health_assessment_six_bloc.dart';
import 'models/mental_health_assessment_six_model.dart';
import 'package:flutter/material.dart';
import 'package:pratinav_s_application9/core/app_export.dart';
import 'package:pratinav_s_application9/widgets/app_bar/appbar_leading_iconbutton_one.dart';
import 'package:pratinav_s_application9/widgets/app_bar/appbar_title.dart';
import 'package:pratinav_s_application9/widgets/app_bar/appbar_trailing_button.dart';
import 'package:pratinav_s_application9/widgets/app_bar/custom_app_bar.dart';
import 'package:pratinav_s_application9/widgets/custom_elevated_button.dart';

class MentalHealthAssessmentSixScreen extends StatelessWidget {
  const MentalHealthAssessmentSixScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<MentalHealthAssessmentSixBloc>(
        create: (context) => MentalHealthAssessmentSixBloc(
            MentalHealthAssessmentSixState(
                mentalHealthAssessmentSixModelObj:
                    MentalHealthAssessmentSixModel()))
          ..add(MentalHealthAssessmentSixInitialEvent()),
        child: MentalHealthAssessmentSixScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MentalHealthAssessmentSixBloc,
        MentalHealthAssessmentSixState>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              appBar: _buildAppBar(context),
              body: Container(
                  width: double.maxFinite,
                  padding:
                      EdgeInsets.symmetric(horizontal: 15.h, vertical: 36.v),
                  child: Column(children: [
                    SizedBox(
                        width: 342.h,
                        child: Text("msg_have_you_sought".tr,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: theme.textTheme.headlineLarge!
                                .copyWith(height: 1.27))),
                    SizedBox(height: 41.v),
                    Container(
                        height: 286.adaptSize,
                        width: 286.adaptSize,
                        padding: EdgeInsets.symmetric(
                            horizontal: 13.h, vertical: 3.v),
                        decoration: AppDecoration.fillGray800.copyWith(
                            borderRadius: BorderRadiusStyle.circleBorder143),
                        child: CustomImageView(
                            imagePath: ImageConstant.imgGroupGray600,
                            height: 279.v,
                            width: 258.h,
                            alignment: Alignment.center)),
                    SizedBox(height: 48.v),
                    _buildFrame(context),
                    SizedBox(height: 16.v),
                    _buildContinueButton(context),
                    SizedBox(height: 5.v)
                  ]))));
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
  Widget _buildHaveYouSoughtYes(BuildContext context) {
    return Expanded(
        child: CustomElevatedButton(
            text: "lbl_yes".tr,
            margin: EdgeInsets.only(right: 8.h),
            buttonStyle: CustomButtonStyles.outlineLightGreen));
  }

  /// Section Widget
  Widget _buildHaveYouSoughtNo(BuildContext context) {
    return Expanded(
        child: CustomElevatedButton(
            text: "lbl_no".tr,
            margin: EdgeInsets.only(left: 8.h),
            buttonStyle: CustomButtonStyles.fillGrayTL281));
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      _buildHaveYouSoughtYes(context),
      _buildHaveYouSoughtNo(context)
    ]);
  }

  /// Section Widget
  Widget _buildContinueButton(BuildContext context) {
    return CustomElevatedButton(
        text: "lbl_continue".tr,
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

  /// Navigates to the mentalHealthAssessmentFiveScreen when the action is triggered.
  onTapContrast(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.mentalHealthAssessmentFiveScreen,
    );
  }

  /// Navigates to the mentalHealthAssessmentSevenScreen when the action is triggered.
  onTapContinueButton(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.mentalHealthAssessmentSevenScreen,
    );
  }
}
