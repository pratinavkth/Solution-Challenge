import 'bloc/home_page_bloc.dart';
import 'models/home_page_model.dart';
import 'package:flutter/material.dart';
import 'package:pratinav_s_application9/core/app_export.dart';
import 'package:pratinav_s_application9/presentation/home_page_chatbot_page/home_page_chatbot_page.dart';
import 'package:pratinav_s_application9/widgets/app_bar/appbar_leading_image.dart';
import 'package:pratinav_s_application9/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:pratinav_s_application9/widgets/app_bar/appbar_trailing_iconbutton_one.dart';
import 'package:pratinav_s_application9/widgets/app_bar/custom_app_bar.dart';
import 'package:pratinav_s_application9/widgets/custom_bottom_bar.dart';
import 'package:pratinav_s_application9/widgets/custom_elevated_button.dart';
import 'package:pratinav_s_application9/widgets/custom_icon_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePageScreen extends StatelessWidget {
  HomePageScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<HomePageBloc>(
      create: (context) => HomePageBloc(HomePageState(
        homePageModelObj: HomePageModel(),
      ))
        ..add(HomePageInitialEvent()),
      child: HomePageScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomePageBloc, HomePageState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: double.maxFinite,
              child: Column(
                children: [
                  _buildTen(context),
                  SizedBox(height: 78.v),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Container(
                        margin: EdgeInsets.only(bottom: 5.v),
                        padding: EdgeInsets.symmetric(horizontal: 9.h),
                        child: Column(
                          children: [
                            _buildSleepCycle(context),
                            SizedBox(height: 28.v),
                            SizedBox(
                              height: 12.v,
                              child: AnimatedSmoothIndicator(
                                activeIndex: 0,
                                count: 3,
                                effect: ScrollingDotsEffect(
                                  spacing: 12,
                                  dotColor: appTheme.whiteA70001,
                                  dotHeight: 12.v,
                                  dotWidth: 12.h,
                                ),
                              ),
                            ),
                            SizedBox(height: 75.v),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: EdgeInsets.only(left: 29.h),
                                child: Text(
                                  "lbl_journal".tr,
                                  style: CustomTextStyles.headlineLargeBold32,
                                ),
                              ),
                            ),
                            SizedBox(height: 9.v),
                            _buildInTheMidstOf(context),
                            SizedBox(height: 16.v),
                            Text(
                              "lbl_1571".tr,
                              style: CustomTextStyles.displayLargeWhiteA70001,
                            ),
                            SizedBox(height: 10.v),
                            Text(
                              "msg_total_converstions".tr,
                              style: CustomTextStyles.titleMedium16,
                            ),
                            SizedBox(height: 58.v),
                            Align(
                              alignment: Alignment.centerRight,
                              child: Padding(
                                padding: EdgeInsets.only(
                                  left: 44.h,
                                  right: 13.h,
                                ),
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
                                            left: 4.h,
                                            right: 14.h,
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Container(
                                                height: 25.v,
                                                width: 29.h,
                                                margin: EdgeInsets.only(
                                                  top: 2.v,
                                                  bottom: 1.v,
                                                ),
                                                child: Stack(
                                                  alignment: Alignment.topLeft,
                                                  children: [
                                                    CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgTelevisionGray80003,
                                                      height: 24.adaptSize,
                                                      width: 24.adaptSize,
                                                      alignment:
                                                          Alignment.centerRight,
                                                    ),
                                                    CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgMonotone32Chat,
                                                      height: 24.adaptSize,
                                                      width: 24.adaptSize,
                                                      alignment:
                                                          Alignment.topLeft,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Text(
                                                "lbl_30".tr,
                                                style: theme
                                                    .textTheme.headlineSmall,
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(height: 5.v),
                                        Text(
                                          "lbl_left_this_month".tr,
                                          style: theme.textTheme.titleSmall,
                                        ),
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(left: 13.h),
                                          child: Row(
                                            children: [
                                              CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgSettingsGreen400,
                                                height: 24.adaptSize,
                                                width: 24.adaptSize,
                                                margin: EdgeInsets.only(
                                                  top: 1.v,
                                                  bottom: 3.v,
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(left: 14.h),
                                                child: Text(
                                                  "lbl_slow".tr,
                                                  style: theme
                                                      .textTheme.headlineSmall,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(height: 5.v),
                                        Text(
                                          "msg_response_support".tr,
                                          style: theme.textTheme.titleSmall,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 86.v),
                            _buildSeventyOne(context),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            bottomNavigationBar: Padding(
              padding: EdgeInsets.only(left: 3.h),
              child: _buildBottomBar(context),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildTen(BuildContext context) {
    return SizedBox(
      height: 338.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgVector338x375,
            height: 338.v,
            width: 375.h,
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only(
                left: 5.h,
                right: 19.h,
                bottom: 42.v,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomAppBar(
                    height: 49.v,
                    leadingWidth: 20.h,
                    leading: AppbarLeadingImage(
                      imagePath: ImageConstant.imgCalendar,
                      margin: EdgeInsets.only(
                        left: 5.h,
                        top: 9.v,
                        bottom: 26.v,
                      ),
                    ),
                    title: AppbarSubtitleOne(
                      text: "msg_wed_17_jan_2024".tr,
                      margin: EdgeInsets.only(left: 9.h),
                    ),
                    actions: [
                      AppbarTrailingIconbuttonOne(
                        imagePath: ImageConstant.imgGroup9,
                        margin: EdgeInsets.symmetric(horizontal: 39.h),
                      ),
                    ],
                  ),
                  SizedBox(height: 4.v),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 9.h,
                      right: 60.h,
                    ),
                    child: Row(
                      children: [
                        SizedBox(
                          height: 59.v,
                          width: 63.h,
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Align(
                                alignment: Alignment.center,
                                child: Container(
                                  height: 59.v,
                                  width: 61.h,
                                  decoration: BoxDecoration(
                                    color: appTheme.blueGray100,
                                    borderRadius: BorderRadius.circular(
                                      30.h,
                                    ),
                                  ),
                                ),
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgSuperego05User,
                                height: 58.v,
                                width: 62.h,
                                radius: BorderRadius.circular(
                                  29.h,
                                ),
                                alignment: Alignment.center,
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: 13.h,
                              top: 7.v,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "lbl_hi_shinomiya".tr,
                                  style:
                                      CustomTextStyles.headlineLargeGray90002,
                                ),
                                SizedBox(height: 5.v),
                                Container(
                                  height: 7.v,
                                  width: 8.h,
                                  margin: EdgeInsets.only(left: 75.h),
                                  decoration: BoxDecoration(
                                    color: appTheme.gray80003,
                                    borderRadius: BorderRadius.circular(
                                      4.h,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 5.v),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 61.h,
                      right: 109.h,
                    ),
                    child: Row(
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgSignal,
                          height: 17.v,
                          width: 16.h,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 5.h),
                          child: Text(
                            "lbl_pro_member".tr,
                            style: CustomTextStyles.labelLargeBlack900,
                          ),
                        ),
                        Spacer(),
                        CustomImageView(
                          imagePath: ImageConstant.imgSettingsGray80003,
                          height: 17.v,
                          width: 19.h,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 4.h,
                            top: 2.v,
                          ),
                          child: Text(
                            "lbl_happy".tr,
                            style: CustomTextStyles.labelLargeBlack900,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 45.v),
                  CustomElevatedButton(
                    text: "msg_search_anything".tr,
                    margin: EdgeInsets.only(left: 13.h),
                    rightIcon: Container(
                      margin: EdgeInsets.only(left: 30.h),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgSearch1,
                        height: 32.adaptSize,
                        width: 32.adaptSize,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSleepCycle(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 1.h,
        right: 2.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(
              top: 1.v,
              bottom: 9.v,
            ),
            padding: EdgeInsets.symmetric(
              horizontal: 17.h,
              vertical: 9.v,
            ),
            decoration: AppDecoration.fillLightgreen400.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder40,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 2.v),
                Text(
                  "lbl_sleep_cycle".tr,
                  style: CustomTextStyles.titleMediumPrimaryContainer,
                ),
                SizedBox(height: 1.v),
                SizedBox(
                  height: 134.adaptSize,
                  width: 134.adaptSize,
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: SizedBox(
                          height: 134.adaptSize,
                          width: 134.adaptSize,
                          child: CircularProgressIndicator(
                            value: 0.5,
                            backgroundColor: appTheme.deepOrange50,
                            color: appTheme.red200,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topCenter,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: 30.h,
                            top: 3.v,
                            right: 24.h,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Align(
                                alignment: Alignment.centerRight,
                                child: Container(
                                  height: 9.adaptSize,
                                  width: 9.adaptSize,
                                  margin: EdgeInsets.only(right: 31.h),
                                  decoration: BoxDecoration(
                                    color: appTheme.whiteA70001,
                                    borderRadius: BorderRadius.circular(
                                      4.h,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 15.v),
                              SizedBox(
                                height: 80.adaptSize,
                                width: 80.adaptSize,
                                child: Stack(
                                  alignment: Alignment.topCenter,
                                  children: [
                                    Align(
                                      alignment: Alignment.center,
                                      child: SizedBox(
                                        height: 80.adaptSize,
                                        width: 80.adaptSize,
                                        child: CircularProgressIndicator(
                                          value: 0.5,
                                          backgroundColor: appTheme.orange50,
                                          color: appTheme.orangeA100,
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.topCenter,
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                          left: 25.h,
                                          top: 3.v,
                                          right: 25.h,
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Align(
                                              alignment: Alignment.centerRight,
                                              child: Container(
                                                height: 9.adaptSize,
                                                width: 9.adaptSize,
                                                margin:
                                                    EdgeInsets.only(right: 2.h),
                                                decoration: BoxDecoration(
                                                  color: appTheme.whiteA70001,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                    4.h,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(height: 17.v),
                                            Text(
                                              "lbl_8_hr".tr,
                                              style: CustomTextStyles
                                                  .titleMediumBlack900,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 188.v,
            width: 172.h,
            child: Stack(
              alignment: Alignment.bottomRight,
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 24.h,
                      vertical: 21.v,
                    ),
                    decoration: AppDecoration.fillYellow900.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder40,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 3.h),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgUserGray80003,
                                height: 30.v,
                                width: 32.h,
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 4.h,
                                  top: 3.v,
                                  bottom: 4.v,
                                ),
                                child: Text(
                                  "lbl_mood".tr,
                                  style: CustomTextStyles.titleMediumMedium,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 2.v),
                        Text(
                          "lbl_sad".tr,
                          style: theme.textTheme.titleMedium,
                        ),
                        SizedBox(height: 81.v),
                      ],
                    ),
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgMonotone18ChartBlueGray100,
                  height: 132.v,
                  width: 68.h,
                  alignment: Alignment.bottomRight,
                  margin: EdgeInsets.only(right: 20.h),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgMonotone18Chart,
                  height: 71.v,
                  width: 68.h,
                  alignment: Alignment.bottomLeft,
                  margin: EdgeInsets.only(
                    left: 24.h,
                    bottom: 10.v,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildInTheMidstOf(BuildContext context) {
    return SizedBox(
      height: 259.v,
      width: 350.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 17.h,
                vertical: 8.v,
              ),
              decoration: AppDecoration.fillLightgreen400.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder40,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(height: 14.v),
                  SizedBox(
                    width: 314.h,
                    child: Text(
                      "msg_in_the_midst_of".tr,
                      maxLines: 4,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.displaySmallOnPrimary.copyWith(
                        height: 1.22,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          CustomIconButton(
            height: 68.adaptSize,
            width: 68.adaptSize,
            padding: EdgeInsets.all(22.h),
            decoration: IconButtonStyleHelper.fillWhiteA,
            alignment: Alignment.bottomCenter,
            child: CustomImageView(
              imagePath: ImageConstant.imgPlus,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSeventyOne(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 11.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 4.v),
            child: CustomIconButton(
              height: 64.adaptSize,
              width: 64.adaptSize,
              padding: EdgeInsets.all(20.h),
              decoration: IconButtonStyleHelper.fillGreen,
              child: CustomImageView(
                imagePath: ImageConstant.imgMonotone31Control,
              ),
            ),
          ),
          CustomIconButton(
            height: 68.v,
            width: 74.h,
            padding: EdgeInsets.all(22.h),
            decoration: IconButtonStyleHelper.fillWhiteA,
            child: CustomImageView(
              imagePath: ImageConstant.imgPlus,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 4.v),
            child: CustomIconButton(
              height: 64.adaptSize,
              width: 64.adaptSize,
              padding: EdgeInsets.all(20.h),
              decoration: IconButtonStyleHelper.fillGreen,
              child: CustomImageView(
                imagePath: ImageConstant.imgSearch,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homePageChatbotPage;
      case BottomBarEnum.Notification:
        return "/";
      case BottomBarEnum.Profile:
        return "/";
      case BottomBarEnum.Aichatbot:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(
    BuildContext context,
    String currentRoute,
  ) {
    switch (currentRoute) {
      case AppRoutes.homePageChatbotPage:
        return HomePageChatbotPage.builder(context);
      default:
        return DefaultWidget();
    }
  }
}
