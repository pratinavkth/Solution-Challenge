import '../mental_health_assessment_two_screen/widgets/userprofile_item_widget.dart';
import 'bloc/mental_health_assessment_two_bloc.dart';
import 'models/mental_health_assessment_two_model.dart';
import 'models/userprofile_item_model.dart';
import 'package:flutter/material.dart';
import 'package:pratinav_s_application9/core/app_export.dart';
import 'package:pratinav_s_application9/widgets/app_bar/appbar_leading_iconbutton_one.dart';
import 'package:pratinav_s_application9/widgets/app_bar/appbar_title.dart';
import 'package:pratinav_s_application9/widgets/app_bar/appbar_trailing_button.dart';
import 'package:pratinav_s_application9/widgets/app_bar/custom_app_bar.dart';
import 'package:pratinav_s_application9/widgets/custom_elevated_button.dart';

class MentalHealthAssessmentTwoScreen extends StatelessWidget {
  const MentalHealthAssessmentTwoScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<MentalHealthAssessmentTwoBloc>(
        create: (context) => MentalHealthAssessmentTwoBloc(
            MentalHealthAssessmentTwoState(
                mentalHealthAssessmentTwoModelObj:
                    MentalHealthAssessmentTwoModel()))
          ..add(MentalHealthAssessmentTwoInitialEvent()),
        child: MentalHealthAssessmentTwoScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 35.v),
                child: Column(children: [
                  Container(
                      width: 257.h,
                      margin: EdgeInsets.symmetric(horizontal: 42.h),
                      child: Text("msg_what_s_your_official".tr,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: theme.textTheme.headlineLarge!
                              .copyWith(height: 1.27))),
                  SizedBox(height: 33.v),
                  _buildUserProfile(context),
                  SizedBox(height: 40.v),
                  CustomElevatedButton(
                      text: "msg_prefer_to_skip".tr,
                      rightIcon: Container(
                          margin: EdgeInsets.only(left: 16.h),
                          child: CustomImageView(
                              imagePath: ImageConstant.imgCloseLightGreen400,
                              height: 24.adaptSize,
                              width: 24.adaptSize)),
                      buttonStyle: CustomButtonStyles.fillGrayTL28,
                      buttonTextStyle:
                          CustomTextStyles.titleMediumLightgreen400,
                      onPressed: () {
                        onTapPreferToSkipthanks(context);
                      }),
                  SizedBox(height: 16.v),
                  CustomElevatedButton(
                      text: "lbl_continue".tr,
                      rightIcon: Container(
                          margin: EdgeInsets.only(left: 16.h),
                          child: CustomImageView(
                              imagePath: ImageConstant.imgArrowleftWhiteA70001,
                              height: 24.adaptSize,
                              width: 24.adaptSize)),
                      onPressed: () {
                        onTapContinue(context);
                      }),
                  SizedBox(height: 5.v)
                ]))));
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
  Widget _buildUserProfile(BuildContext context) {
    return BlocSelector<MentalHealthAssessmentTwoBloc,
            MentalHealthAssessmentTwoState, MentalHealthAssessmentTwoModel?>(
        selector: (state) => state.mentalHealthAssessmentTwoModelObj,
        builder: (context, mentalHealthAssessmentTwoModelObj) {
          return ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (context, index) {
                return SizedBox(height: 8.v);
              },
              itemCount: mentalHealthAssessmentTwoModelObj
                      ?.userprofileItemList.length ??
                  0,
              itemBuilder: (context, index) {
                UserprofileItemModel model = mentalHealthAssessmentTwoModelObj
                        ?.userprofileItemList[index] ??
                    UserprofileItemModel();
                return UserprofileItemWidget(model);
              });
        });
  }

  /// Navigates to the mentalHealthAssessmentOneScreen when the action is triggered.
  onTapContrast(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.mentalHealthAssessmentOneScreen,
    );
  }

  /// Navigates to the mentalHealthAssessmentThreeScreen when the action is triggered.
  onTapPreferToSkipthanks(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.mentalHealthAssessmentThreeScreen,
    );
  }

  /// Navigates to the mentalHealthAssessmentThreeScreen when the action is triggered.
  onTapContinue(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.mentalHealthAssessmentThreeScreen,
    );
  }
}
