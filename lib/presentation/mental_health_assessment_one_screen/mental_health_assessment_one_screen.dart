import '../mental_health_assessment_one_screen/widgets/mentalhealthassessmentframe_item_widget.dart';
import 'bloc/mental_health_assessment_one_bloc.dart';
import 'models/mental_health_assessment_one_model.dart';
import 'models/mentalhealthassessmentframe_item_model.dart';
import 'package:flutter/material.dart';
import 'package:pratinav_s_application9/core/app_export.dart';
import 'package:pratinav_s_application9/widgets/app_bar/appbar_leading_iconbutton_one.dart';
import 'package:pratinav_s_application9/widgets/app_bar/appbar_title.dart';
import 'package:pratinav_s_application9/widgets/app_bar/appbar_trailing_button.dart';
import 'package:pratinav_s_application9/widgets/app_bar/custom_app_bar.dart';
import 'package:pratinav_s_application9/widgets/custom_elevated_button.dart';

class MentalHealthAssessmentOneScreen extends StatelessWidget {
  const MentalHealthAssessmentOneScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<MentalHealthAssessmentOneBloc>(
        create: (context) => MentalHealthAssessmentOneBloc(
            MentalHealthAssessmentOneState(
                mentalHealthAssessmentOneModelObj:
                    MentalHealthAssessmentOneModel()))
          ..add(MentalHealthAssessmentOneInitialEvent()),
        child: MentalHealthAssessmentOneScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 36.v),
                child: Column(children: [
                  Container(
                      width: 251.h,
                      margin: EdgeInsets.only(left: 46.h, right: 45.h),
                      child: Text("msg_what_s_your_health".tr,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: theme.textTheme.headlineLarge!
                              .copyWith(height: 1.27))),
                  SizedBox(height: 41.v),
                  _buildMentalHealthAssessmentFrame(context),
                  SizedBox(height: 48.v),
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
            margin: EdgeInsets.only(left: 16.h, top: 4.v, bottom: 4.v)),
        title: AppbarTitle(
            text: "lbl_assessment".tr, margin: EdgeInsets.only(left: 12.h)),
        actions: [
          AppbarTrailingButton(
              margin: EdgeInsets.symmetric(horizontal: 16.h, vertical: 13.v))
        ]);
  }

  /// Section Widget
  Widget _buildMentalHealthAssessmentFrame(BuildContext context) {
    return BlocSelector<MentalHealthAssessmentOneBloc,
            MentalHealthAssessmentOneState, MentalHealthAssessmentOneModel?>(
        selector: (state) => state.mentalHealthAssessmentOneModelObj,
        builder: (context, mentalHealthAssessmentOneModelObj) {
          return ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (context, index) {
                return SizedBox(height: 12.v);
              },
              itemCount: mentalHealthAssessmentOneModelObj
                      ?.mentalhealthassessmentframeItemList.length ??
                  0,
              itemBuilder: (context, index) {
                MentalhealthassessmentframeItemModel model =
                    mentalHealthAssessmentOneModelObj
                            ?.mentalhealthassessmentframeItemList[index] ??
                        MentalhealthassessmentframeItemModel();
                return MentalhealthassessmentframeItemWidget(model);
              });
        });
  }

  /// Navigates to the mentalHealthAssessmentTwoScreen when the action is triggered.
  onTapContinue(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.mentalHealthAssessmentTwoScreen,
    );
  }
}
