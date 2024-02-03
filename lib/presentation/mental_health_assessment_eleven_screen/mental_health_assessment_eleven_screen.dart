import '../mental_health_assessment_eleven_screen/widgets/frame_item_widget.dart';
import 'bloc/mental_health_assessment_eleven_bloc.dart';
import 'models/frame_item_model.dart';
import 'models/mental_health_assessment_eleven_model.dart';
import 'package:flutter/material.dart';
import 'package:pratinav_s_application9/core/app_export.dart';
import 'package:pratinav_s_application9/widgets/app_bar/appbar_leading_iconbutton_one.dart';
import 'package:pratinav_s_application9/widgets/app_bar/appbar_title.dart';
import 'package:pratinav_s_application9/widgets/app_bar/appbar_trailing_button_one.dart';
import 'package:pratinav_s_application9/widgets/app_bar/custom_app_bar.dart';
import 'package:pratinav_s_application9/widgets/custom_elevated_button.dart';

class MentalHealthAssessmentElevenScreen extends StatelessWidget {
  const MentalHealthAssessmentElevenScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<MentalHealthAssessmentElevenBloc>(
        create: (context) => MentalHealthAssessmentElevenBloc(
            MentalHealthAssessmentElevenState(
                mentalHealthAssessmentElevenModelObj:
                    MentalHealthAssessmentElevenModel()))
          ..add(MentalHealthAssessmentElevenInitialEvent()),
        child: MentalHealthAssessmentElevenScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 31.v),
                child: Column(children: [
                  SizedBox(height: 5.v),
                  SizedBox(
                      width: 343.h,
                      child: Text("msg_do_you_have_other".tr,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: theme.textTheme.headlineLarge!
                              .copyWith(height: 1.27))),
                  SizedBox(height: 33.v),
                  CustomImageView(
                      imagePath: ImageConstant.imgFrameGray800,
                      height: 182.v,
                      width: 163.h),
                  SizedBox(height: 40.v),
                  _buildMentalHealthAssessment(context),
                  SizedBox(height: 23.v),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24.h),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                                padding: EdgeInsets.only(bottom: 1.v),
                                child: Text("lbl_most_common".tr,
                                    style:
                                        CustomTextStyles.titleSmallSemiBold)),
                            Padding(
                                padding: EdgeInsets.only(left: 8.h),
                                child: Text("msg_drug_abuse_angry".tr,
                                    style:
                                        CustomTextStyles.titleSmallYellow90001))
                          ]))
                ])),
            bottomNavigationBar: _buildContinue(context)));
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
  Widget _buildMentalHealthAssessment(BuildContext context) {
    return Container(
        width: 343.h,
        padding: EdgeInsets.all(15.h),
        decoration: AppDecoration.outlineLightgreen400
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder40),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BlocSelector<
                      MentalHealthAssessmentElevenBloc,
                      MentalHealthAssessmentElevenState,
                      MentalHealthAssessmentElevenModel?>(
                  selector: (state) =>
                      state.mentalHealthAssessmentElevenModelObj,
                  builder: (context, mentalHealthAssessmentElevenModelObj) {
                    return Wrap(
                        runSpacing: 8.v,
                        spacing: 8.h,
                        children: List<Widget>.generate(
                            mentalHealthAssessmentElevenModelObj
                                    ?.frameItemList.length ??
                                0, (index) {
                          FrameItemModel model =
                              mentalHealthAssessmentElevenModelObj
                                      ?.frameItemList[index] ??
                                  FrameItemModel();
                          return FrameItemWidget(model,
                              onSelectedChipView: (value) {
                            context
                                .read<MentalHealthAssessmentElevenBloc>()
                                .add(UpdateChipViewEvent(
                                    index: index, isSelected: value));
                          });
                        }));
                  }),
              SizedBox(height: 32.v),
              Align(
                  alignment: Alignment.centerRight,
                  child:
                      Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgTelevisionGray600,
                        height: 20.adaptSize,
                        width: 20.adaptSize),
                    Padding(
                        padding:
                            EdgeInsets.only(left: 4.h, top: 2.v, bottom: 2.v),
                        child: Text("lbl_2_10".tr.toUpperCase(),
                            style: CustomTextStyles.labelLargeGray500))
                  ]))
            ]));
  }

  /// Section Widget
  Widget _buildContinue(BuildContext context) {
    return CustomElevatedButton(
        text: "lbl_continue".tr,
        margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 47.v),
        rightIcon: Container(
            margin: EdgeInsets.only(left: 16.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgArrowleftWhiteA70001,
                height: 24.adaptSize,
                width: 24.adaptSize)),
        onPressed: () {
          onTapContinue(context);
        });
  }

  /// Navigates to the mentalHealthAssessmentTenScreen when the action is triggered.
  onTapContrast(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.mentalHealthAssessmentTenScreen,
    );
  }

  /// Navigates to the mentalHealthAssessmentTwelveScreen when the action is triggered.
  onTapContinue(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.mentalHealthAssessmentTwelveScreen,
    );
  }
}
