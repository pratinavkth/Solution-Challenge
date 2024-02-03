import 'bloc/home_page_chatbot_bloc.dart';
import 'models/home_page_chatbot_model.dart';
import 'package:flutter/material.dart';
import 'package:pratinav_s_application9/core/app_export.dart';
import 'package:pratinav_s_application9/widgets/app_bar/appbar_leading_iconbutton_one.dart';
import 'package:pratinav_s_application9/widgets/app_bar/appbar_title.dart';
import 'package:pratinav_s_application9/widgets/app_bar/custom_app_bar.dart';
import 'package:pratinav_s_application9/widgets/custom_icon_button.dart';

class HomePageChatbotPage extends StatelessWidget {
  const HomePageChatbotPage({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<HomePageChatbotBloc>(
        create: (context) => HomePageChatbotBloc(HomePageChatbotState(
            homePageChatbotModelObj: HomePageChatbotModel()))
          ..add(HomePageChatbotInitialEvent()),
        child: HomePageChatbotPage());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomePageChatbotBloc, HomePageChatbotState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              appBar: _buildAppBar(context),
              body: Container(
                  width: double.maxFinite,
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.h, vertical: 57.v),
                  child: Column(children: [
                    Text("lbl_1571".tr,
                        style: CustomTextStyles.displayLargeWhiteA70001),
                    SizedBox(height: 18.v),
                    Text("msg_total_converstions".tr,
                        style: CustomTextStyles.titleMedium16),
                    SizedBox(height: 58.v),
                    Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                            padding: EdgeInsets.only(left: 33.h, right: 2.h),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                            width: 75.h,
                                            margin: EdgeInsets.only(
                                                left: 4.h, right: 14.h),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Container(
                                                      height: 25.v,
                                                      width: 29.h,
                                                      margin: EdgeInsets.only(
                                                          top: 2.v,
                                                          bottom: 1.v),
                                                      child: Stack(
                                                          alignment:
                                                              Alignment.topLeft,
                                                          children: [
                                                            CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgTelevisionGray80003,
                                                                height: 24
                                                                    .adaptSize,
                                                                width: 24
                                                                    .adaptSize,
                                                                alignment: Alignment
                                                                    .centerRight),
                                                            CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgMonotone32Chat,
                                                                height: 24
                                                                    .adaptSize,
                                                                width: 24
                                                                    .adaptSize,
                                                                alignment:
                                                                    Alignment
                                                                        .topLeft)
                                                          ])),
                                                  Text("lbl_30".tr,
                                                      style: theme.textTheme
                                                          .headlineSmall)
                                                ])),
                                        SizedBox(height: 5.v),
                                        Text("lbl_left_this_month".tr,
                                            style: theme.textTheme.titleSmall)
                                      ]),
                                  Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                            padding:
                                                EdgeInsets.only(left: 13.h),
                                            child: Row(children: [
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgSettingsGreen400,
                                                  height: 24.adaptSize,
                                                  width: 24.adaptSize,
                                                  margin: EdgeInsets.only(
                                                      top: 1.v, bottom: 3.v)),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 14.h),
                                                  child: Text("lbl_slow".tr,
                                                      style: theme.textTheme
                                                          .headlineSmall))
                                            ])),
                                        SizedBox(height: 5.v),
                                        Text("msg_response_support".tr,
                                            style: theme.textTheme.titleSmall)
                                      ])
                                ]))),
                    SizedBox(height: 86.v),
                    _buildMonotoneControl(context),
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
            text: "msg_my_conversations".tr,
            margin: EdgeInsets.only(left: 12.h)),
        actions: [
          Container(
              height: 30.v,
              width: 74.h,
              margin: EdgeInsets.fromLTRB(24.h, 4.v, 24.h, 22.v),
              child: Stack(alignment: Alignment.topCenter, children: [
                Align(
                    alignment: Alignment.center,
                    child: Container(
                        height: 30.v,
                        width: 74.h,
                        decoration: BoxDecoration(
                            color: appTheme.gray90002,
                            borderRadius: BorderRadius.circular(37.h),
                            border: Border.all(
                                color: appTheme.red50, width: 1.h)))),
                Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                        padding: EdgeInsets.fromLTRB(15.h, 3.v, 14.h, 6.v),
                        child: Text("lbl_bassic".tr,
                            style: CustomTextStyles
                                .titleMediumOnPrimaryContainer)))
              ]))
        ]);
  }

  /// Section Widget
  Widget _buildMonotoneControl(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 1.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.only(bottom: 4.v),
              child: CustomIconButton(
                  height: 64.adaptSize,
                  width: 64.adaptSize,
                  padding: EdgeInsets.all(20.h),
                  decoration: IconButtonStyleHelper.fillGreen,
                  child: CustomImageView(
                      imagePath: ImageConstant.imgMonotone31Control))),
          CustomIconButton(
              height: 68.v,
              width: 74.h,
              padding: EdgeInsets.all(22.h),
              decoration: IconButtonStyleHelper.fillWhiteA,
              onTap: () {
                onTapBtnPlus(context);
              },
              child: CustomImageView(imagePath: ImageConstant.imgPlus)),
          Padding(
              padding: EdgeInsets.only(bottom: 4.v),
              child: CustomIconButton(
                  height: 64.adaptSize,
                  width: 64.adaptSize,
                  padding: EdgeInsets.all(20.h),
                  decoration: IconButtonStyleHelper.fillGreen,
                  child: CustomImageView(imagePath: ImageConstant.imgSearch)))
        ]));
  }

  /// Navigates to the homePageScreen when the action is triggered.
  onTapContrast(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.homePageScreen,
    );
  }

  /// Navigates to the aiChatbotConversationScreen when the action is triggered.
  onTapBtnPlus(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.aiChatbotConversationScreen,
    );
  }
}
