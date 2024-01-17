import 'bloc/welcome_features_two_bloc.dart';
import 'models/welcome_features_two_model.dart';
import 'package:flutter/material.dart';
import 'package:pratinav_s_application9/core/app_export.dart';
import 'package:pratinav_s_application9/widgets/custom_icon_button.dart';
import 'package:pratinav_s_application9/widgets/custom_outlined_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class WelcomeFeaturesTwoScreen extends StatelessWidget {
  const WelcomeFeaturesTwoScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<WelcomeFeaturesTwoBloc>(
        create: (context) => WelcomeFeaturesTwoBloc(WelcomeFeaturesTwoState(
            welcomeFeaturesTwoModelObj: WelcomeFeaturesTwoModel()))
          ..add(WelcomeFeaturesTwoInitialEvent()),
        child: WelcomeFeaturesTwoScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WelcomeFeaturesTwoBloc, WelcomeFeaturesTwoState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: appTheme.gray80002,
              body: SizedBox(
                  width: double.maxFinite,
                  child: Column(children: [
                    SizedBox(height: 60.v),
                    Expanded(
                        child: SingleChildScrollView(
                            child: Column(children: [
                      SizedBox(
                          height: 12.v,
                          child: AnimatedSmoothIndicator(
                              activeIndex: 0,
                              count: 3,
                              effect: ScrollingDotsEffect(
                                  spacing: 12,
                                  activeDotColor: appTheme.whiteA70001,
                                  dotHeight: 12.v,
                                  dotWidth: 12.h))),
                      SizedBox(height: 6.v),
                      SizedBox(
                          height: 1354.v,
                          width: double.maxFinite,
                          child:
                              Stack(alignment: Alignment.topRight, children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgVector,
                                height: 56.v,
                                width: 105.h,
                                alignment: Alignment.topLeft),
                            CustomImageView(
                                imagePath: ImageConstant.imgVector,
                                height: 71.v,
                                width: 150.h,
                                alignment: Alignment.topRight,
                                margin: EdgeInsets.only(top: 10.v)),
                            CustomImageView(
                                imagePath: ImageConstant.imgVector,
                                height: 66.v,
                                width: 114.h,
                                alignment: Alignment.topLeft,
                                margin: EdgeInsets.only(top: 231.v)),
                            CustomImageView(
                                imagePath: ImageConstant.imgVectorLightGreen800,
                                height: 105.v,
                                width: 145.h,
                                alignment: Alignment.topRight,
                                margin: EdgeInsets.only(top: 140.v)),
                            CustomImageView(
                                imagePath: ImageConstant.imgGroup,
                                height: 429.v,
                                width: 375.h,
                                alignment: Alignment.topCenter,
                                margin: EdgeInsets.only(top: 31.v)),
                            Align(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 27.h, vertical: 56.v),
                                    decoration: AppDecoration.outlineGray
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder187),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          CustomOutlinedButton(
                                              width: 66.h,
                                              text: "lbl_step_1"
                                                  .tr
                                                  .toUpperCase()),
                                          SizedBox(height: 24.v),
                                          SizedBox(
                                              width: 320.h,
                                              child: RichText(
                                                  text: TextSpan(children: [
                                                    TextSpan(
                                                        text:
                                                            "msg_personalize_your2"
                                                                .tr,
                                                        style: CustomTextStyles
                                                            .headlineLargeffffffff),
                                                    TextSpan(
                                                        text:
                                                            "msg_health_state_with"
                                                                .tr,
                                                        style: CustomTextStyles
                                                            .headlineLargeff9bb067)
                                                  ]),
                                                  textAlign: TextAlign.center)),
                                          SizedBox(height: 23.v),
                                          CustomIconButton(
                                              height: 80.adaptSize,
                                              width: 80.adaptSize,
                                              padding: EdgeInsets.all(28.h),
                                              decoration: IconButtonStyleHelper
                                                  .fillGray,
                                              onTap: () {
                                                onTapBtnArrowLeft(context);
                                              },
                                              child: CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgArrowLeftGray10001)),
                                          SizedBox(height: 23.v)
                                        ])))
                          ]))
                    ])))
                  ]))));
    });
  }

  /// Navigates to the welcomeFeaturesScreen when the action is triggered.
  onTapBtnArrowLeft(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.welcomeFeaturesScreen,
    );
  }
}
