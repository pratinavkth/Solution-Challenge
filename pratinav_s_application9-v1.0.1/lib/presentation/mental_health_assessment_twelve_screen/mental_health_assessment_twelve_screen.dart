import 'bloc/mental_health_assessment_twelve_bloc.dart';
import 'models/mental_health_assessment_twelve_model.dart';
import 'package:flutter/material.dart';
import 'package:pratinav_s_application9/core/app_export.dart';
import 'package:pratinav_s_application9/widgets/app_bar/appbar_leading_iconbutton_one.dart';
import 'package:pratinav_s_application9/widgets/app_bar/appbar_title.dart';
import 'package:pratinav_s_application9/widgets/app_bar/appbar_trailing_button_one.dart';
import 'package:pratinav_s_application9/widgets/app_bar/custom_app_bar.dart';
import 'package:pratinav_s_application9/widgets/custom_elevated_button.dart';
import 'package:pratinav_s_application9/widgets/custom_pin_code_text_field.dart';

class MentalHealthAssessmentTwelveScreen extends StatelessWidget {
  const MentalHealthAssessmentTwelveScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<MentalHealthAssessmentTwelveBloc>(
        create: (context) => MentalHealthAssessmentTwelveBloc(
            MentalHealthAssessmentTwelveState(
                mentalHealthAssessmentTwelveModelObj:
                    MentalHealthAssessmentTwelveModel()))
          ..add(MentalHealthAssessmentTwelveInitialEvent()),
        child: MentalHealthAssessmentTwelveScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 19.h, vertical: 36.v),
                child: Column(children: [
                  Container(
                      width: 267.h,
                      margin: EdgeInsets.only(left: 35.h, right: 33.h),
                      child: Text("msg_how_would_you_rate2".tr,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: theme.textTheme.headlineLarge!
                              .copyWith(height: 1.27))),
                  SizedBox(height: 39.v),
                  Text("lbl_5".tr,
                      style: CustomTextStyles.urbanistWhiteA70001ExtraBold180),
                  SizedBox(height: 4.v),
                  BlocSelector<
                          MentalHealthAssessmentTwelveBloc,
                          MentalHealthAssessmentTwelveState,
                          TextEditingController?>(
                      selector: (state) => state.otpController,
                      builder: (context, otpController) {
                        return CustomPinCodeTextField(
                            context: context,
                            controller: otpController,
                            onChanged: (value) {
                              otpController?.text = value;
                            });
                      }),
                  SizedBox(height: 25.v),
                  Text("msg_you_are_exremely".tr,
                      style: CustomTextStyles.titleMediumBold_1),
                  SizedBox(height: 5.v)
                ])),
            bottomNavigationBar: _buildContinueButton(context)));
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
          AppbarTrailingButtonOne(
              margin: EdgeInsets.symmetric(horizontal: 16.h, vertical: 13.v))
        ]);
  }

  /// Section Widget
  Widget _buildContinueButton(BuildContext context) {
    return CustomElevatedButton(
        text: "lbl_continue".tr,
        margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 74.v),
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

  /// Navigates to the mentalHealthAssessmentElevenScreen when the action is triggered.
  onTapContrast(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.mentalHealthAssessmentElevenScreen,
    );
  }

  /// Navigates to the mentalHealthAssessmentFourteenScreen when the action is triggered.
  onTapContinueButton(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.mentalHealthAssessmentFourteenScreen,
    );
  }
}
