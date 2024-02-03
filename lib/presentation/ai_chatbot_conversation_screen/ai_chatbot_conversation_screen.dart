import 'bloc/ai_chatbot_conversation_bloc.dart';
import 'models/ai_chatbot_conversation_model.dart';
import 'package:flutter/material.dart';
import 'package:pratinav_s_application9/core/app_export.dart';
import 'package:pratinav_s_application9/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:pratinav_s_application9/widgets/app_bar/appbar_subtitle.dart';
import 'package:pratinav_s_application9/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:pratinav_s_application9/widgets/app_bar/custom_app_bar.dart';
import 'package:pratinav_s_application9/widgets/custom_elevated_button.dart';
import 'package:pratinav_s_application9/widgets/custom_floating_button.dart';
import 'package:pratinav_s_application9/widgets/custom_icon_button.dart';
import 'package:pratinav_s_application9/widgets/custom_radio_button.dart';

class AiChatbotConversationScreen extends StatelessWidget {
  const AiChatbotConversationScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<AiChatbotConversationBloc>(
        create: (context) => AiChatbotConversationBloc(
            AiChatbotConversationState(
                aiChatbotConversationModelObj: AiChatbotConversationModel()))
          ..add(AiChatbotConversationInitialEvent()),
        child: AiChatbotConversationScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray10002,
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 32.v),
                    child: Column(children: [
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16.h),
                          child: _buildFrameRow(context,
                              text: "msg_i_ve_been_experiencing".tr)),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                              height: 16.adaptSize,
                              width: 16.adaptSize,
                              margin: EdgeInsets.only(right: 16.h),
                              decoration:
                                  BoxDecoration(color: appTheme.gray80001))),
                      SizedBox(height: 8.v),
                      _buildFrameRow2(context),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              height: 16.adaptSize,
                              width: 16.adaptSize,
                              margin: EdgeInsets.only(left: 16.h),
                              decoration:
                                  BoxDecoration(color: appTheme.gray300))),
                      SizedBox(height: 8.v),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16.h),
                          child: _buildFrameRow(context,
                              text: "msg_thank_you_so_much".tr)),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                              height: 16.adaptSize,
                              width: 16.adaptSize,
                              margin: EdgeInsets.only(right: 16.h),
                              decoration:
                                  BoxDecoration(color: appTheme.gray80001))),
                      SizedBox(height: 8.v),
                      _buildFrameRow4(context),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              height: 16.adaptSize,
                              width: 16.adaptSize,
                              margin: EdgeInsets.only(left: 16.h),
                              decoration:
                                  BoxDecoration(color: appTheme.gray300))),
                      SizedBox(height: 132.v),
                      _buildFrameRow5(context)
                    ]))),
            floatingActionButton: _buildFloatingActionButton(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 80.v,
        leadingWidth: 56.h,
        leading: AppbarLeadingIconbutton(
            imagePath: ImageConstant.imgMobileGray80001,
            margin: EdgeInsets.only(left: 16.h, top: 24.v, bottom: 16.v),
            onTap: () {
              onTapMobile(context);
            }),
        title: AppbarSubtitle(
            text: "lbl_doctor_freud_ai".tr, margin: EdgeInsets.only(left: 8.h)),
        actions: [
          AppbarTrailingIconbutton(
              imagePath: ImageConstant.imgRewind,
              margin: EdgeInsets.only(left: 16.h, top: 24.v, right: 16.h)),
          AppbarTrailingIconbutton(
              imagePath: ImageConstant.imgTelevision,
              margin: EdgeInsets.only(left: 8.h, top: 24.v, right: 32.h))
        ],
        styleType: Style.bgOutline);
  }

  /// Section Widget
  Widget _buildFrameRow2(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 16.h),
        padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 7.v),
        decoration: AppDecoration.fillGray300
            .copyWith(borderRadius: BorderRadiusStyle.customBorderTL161),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                  padding: EdgeInsets.only(bottom: 113.v),
                  child: CustomIconButton(
                      height: 40.adaptSize,
                      width: 40.adaptSize,
                      padding: EdgeInsets.all(10.h),
                      decoration: IconButtonStyleHelper.fillDeepOrange,
                      child: CustomImageView(
                          imagePath: ImageConstant.imgCloseRed5001))),
              Expanded(
                  child: Padding(
                      padding: EdgeInsets.only(left: 12.h, right: 1.h),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                                width: 273.h,
                                child: Text("msg_i_understand_it_s".tr,
                                    maxLines: 6,
                                    overflow: TextOverflow.ellipsis,
                                    style:
                                        CustomTextStyles.titleSmallGray900a3)),
                            SizedBox(height: 16.v),
                            Padding(
                                padding: EdgeInsets.only(right: 9.h),
                                child: Row(children: [
                                  CustomElevatedButton(
                                      height: 32.v,
                                      width: 163.h,
                                      text: "msg_doctor_khan_phone"
                                          .tr
                                          .toUpperCase(),
                                      leftIcon: Container(
                                          margin: EdgeInsets.only(right: 6.h),
                                          child: CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgSettings,
                                              height: 20.adaptSize,
                                              width: 20.adaptSize)),
                                      buttonStyle:
                                          CustomButtonStyles.fillWhiteA,
                                      buttonTextStyle:
                                          theme.textTheme.labelMedium!),
                                  CustomElevatedButton(
                                      height: 32.v,
                                      width: 93.h,
                                      text: "lbl_address".tr.toUpperCase(),
                                      margin: EdgeInsets.only(left: 8.h),
                                      leftIcon: Container(
                                          margin: EdgeInsets.only(right: 6.h),
                                          child: CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgLinkedin,
                                              height: 20.adaptSize,
                                              width: 20.adaptSize)),
                                      buttonStyle:
                                          CustomButtonStyles.fillWhiteA,
                                      buttonTextStyle:
                                          theme.textTheme.labelMedium!)
                                ]))
                          ])))
            ]));
  }

  /// Section Widget
  Widget _buildFrameRow4(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 16.h),
        padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 7.v),
        decoration: AppDecoration.fillGray300
            .copyWith(borderRadius: BorderRadiusStyle.customBorderTL161),
        child: Row(mainAxisSize: MainAxisSize.max, children: [
          CustomIconButton(
              height: 40.adaptSize,
              width: 40.adaptSize,
              padding: EdgeInsets.all(10.h),
              decoration: IconButtonStyleHelper.fillDeepOrange,
              child: CustomImageView(imagePath: ImageConstant.imgCloseRed5001)),
          Expanded(
              child: Container(
                  width: 260.h,
                  margin: EdgeInsets.only(left: 12.h, bottom: 4.v),
                  child: Text("msg_no_problem_amanda_i_m".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.titleSmallGray900a3)))
        ]));
  }

  /// Section Widget
  Widget _buildFrameRow5(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 10.v),
        decoration: AppDecoration.outlineGray300,
        child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
              margin: EdgeInsets.only(bottom: 38.v),
              padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 14.v),
              decoration: AppDecoration.fillGray10002
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
              child: BlocSelector<AiChatbotConversationBloc,
                      AiChatbotConversationState, String?>(
                  selector: (state) => state.radioGroup,
                  builder: (context, radioGroup) {
                    return CustomRadioButton(
                        text: "msg_thank_you_so_much2".tr,
                        value: "msg_thank_you_so_much2".tr,
                        groupValue: radioGroup,
                        padding: EdgeInsets.symmetric(vertical: 1.v),
                        textStyle: CustomTextStyles.titleSmallGray80001,
                        onChange: (value) {
                          context
                              .read<AiChatbotConversationBloc>()
                              .add(ChangeRadioButtonEvent(value: value));
                        });
                  }))
        ]));
  }

  /// Section Widget
  Widget _buildFloatingActionButton(BuildContext context) {
    return CustomFloatingButton(
        height: 48,
        width: 48,
        backgroundColor: appTheme.gray80001,
        child: CustomImageView(
            imagePath: ImageConstant.imgSettingsGray80001,
            height: 24.0.v,
            width: 24.0.h));
  }

  /// Common widget
  Widget _buildFrameRow(
    BuildContext context, {
    required String text,
  }) {
    return Container(
        padding: EdgeInsets.all(8.h),
        decoration: AppDecoration.fillGray80001
            .copyWith(borderRadius: BorderRadiusStyle.customBorderTL16),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                  child: Container(
                      width: 266.h,
                      margin: EdgeInsets.only(top: 1.v, bottom: 2.v),
                      child: Text(text,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: CustomTextStyles.titleSmallGray10002
                              .copyWith(color: appTheme.gray10002)))),
              Padding(
                  padding: EdgeInsets.only(left: 20.h),
                  child: CustomIconButton(
                      height: 40.adaptSize,
                      width: 40.adaptSize,
                      padding: EdgeInsets.all(10.h),
                      decoration: IconButtonStyleHelper.fillLightGreen,
                      child: CustomImageView(
                          imagePath: ImageConstant.imgCloseLightGreen50)))
            ]));
  }

  /// Navigates to the homePageChatbotContainerScreen when the action is triggered.
  onTapMobile(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.homePageChatbotContainerScreen,
    );
  }
}
