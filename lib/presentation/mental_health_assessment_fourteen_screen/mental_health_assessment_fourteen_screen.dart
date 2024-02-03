import 'bloc/mental_health_assessment_fourteen_bloc.dart';
import 'models/mental_health_assessment_fourteen_model.dart';
import 'package:flutter/material.dart';
import 'package:pratinav_s_application9/core/app_export.dart';
import 'package:pratinav_s_application9/widgets/app_bar/appbar_leading_iconbutton_one.dart';
import 'package:pratinav_s_application9/widgets/app_bar/appbar_title.dart';
import 'package:pratinav_s_application9/widgets/app_bar/appbar_trailing_button_one.dart';
import 'package:pratinav_s_application9/widgets/app_bar/custom_app_bar.dart';
import 'package:pratinav_s_application9/widgets/custom_elevated_button.dart';

class MentalHealthAssessmentFourteenScreen extends StatelessWidget {
  const MentalHealthAssessmentFourteenScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<MentalHealthAssessmentFourteenBloc>(
        create: (context) => MentalHealthAssessmentFourteenBloc(
            MentalHealthAssessmentFourteenState(
                mentalHealthAssessmentFourteenModelObj:
                    MentalHealthAssessmentFourteenModel()))
          ..add(MentalHealthAssessmentFourteenInitialEvent()),
        child: MentalHealthAssessmentFourteenScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MentalHealthAssessmentFourteenBloc,
        MentalHealthAssessmentFourteenState>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              appBar: _buildAppBar(context),
              body: Container(
                  width: double.maxFinite,
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.h, vertical: 40.v),
                  child: Column(children: [
                    Text("msg_expression_analysis".tr,
                        style: theme.textTheme.headlineLarge),
                    SizedBox(height: 12.v),
                    Container(
                        width: 287.h,
                        margin: EdgeInsets.only(left: 28.h, right: 27.h),
                        child: Text("msg_freely_write_down".tr,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: CustomTextStyles.titleMediumGray400Medium
                                .copyWith(height: 1.60))),
                    SizedBox(height: 43.v),
                    _buildFrame(context),
                    SizedBox(height: 24.v),
                    CustomElevatedButton(
                        height: 40.v,
                        width: 189.h,
                        text: "msg_use_voice_instead".tr,
                        leftIcon: Container(
                            margin: EdgeInsets.only(right: 8.h),
                            child: CustomImageView(
                                imagePath: ImageConstant.imgMenu,
                                height: 24.adaptSize,
                                width: 24.adaptSize)),
                        buttonStyle: CustomButtonStyles.fillLightGreen,
                        buttonTextStyle: CustomTextStyles.titleMediumSemiBold),
                    SizedBox(height: 48.v),
                    CustomElevatedButton(
                        text: "lbl_continue".tr,
                        rightIcon: Container(
                            margin: EdgeInsets.only(left: 16.h),
                            child: CustomImageView(
                                imagePath:
                                    ImageConstant.imgArrowleftWhiteA70001,
                                height: 24.adaptSize,
                                width: 24.adaptSize)),
                        onPressed: () {
                          onTapContinue(context);
                        }),
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
          AppbarTrailingButtonOne(
              margin: EdgeInsets.symmetric(horizontal: 16.h, vertical: 13.v))
        ]);
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return Container(
        width: 343.h,
        padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 23.v),
        decoration: AppDecoration.outlineGray80003
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder32),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                  height: 114.v,
                  width: 266.h,
                  child: Stack(alignment: Alignment.center, children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgGroupDeepOrange100,
                        height: 37.v,
                        width: 266.h,
                        alignment: Alignment.topCenter,
                        margin: EdgeInsets.only(top: 36.v)),
                    Align(
                        alignment: Alignment.center,
                        child: SizedBox(
                            width: 251.h,
                            child: RichText(
                                text: TextSpan(children: [
                                  TextSpan(
                                      text: "msg_i_don_t_want_to2".tr,
                                      style: CustomTextStyles
                                          .headlineLargeffffffffSemiBold),
                                  TextSpan(
                                      text: "msg_alive_anymore_just".tr,
                                      style: CustomTextStyles
                                          .headlineLargeff4e3321),
                                  TextSpan(
                                      text: "msg_f_kill_me".tr,
                                      style: CustomTextStyles
                                          .headlineLargeffffffffSemiBold)
                                ]),
                                textAlign: TextAlign.left)))
                  ])),
              SizedBox(height: 63.v),
              Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                      padding: EdgeInsets.only(right: 7.h),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgTelevisionGray600,
                                height: 24.adaptSize,
                                width: 24.adaptSize),
                            Padding(
                                padding: EdgeInsets.only(left: 8.h, top: 2.v),
                                child: Text("lbl_75_250".tr,
                                    style: CustomTextStyles.titleMediumGray500))
                          ])))
            ]));
  }

  /// Navigates to the mentalHealthAssessmentTwelveScreen when the action is triggered.
  onTapContrast(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.mentalHealthAssessmentTwelveScreen,
    );
  }

  /// Navigates to the homePageScreen when the action is triggered.
  onTapContinue(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.homePageScreen,
    );
  }
}
