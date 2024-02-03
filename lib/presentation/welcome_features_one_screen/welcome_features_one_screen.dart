import 'bloc/welcome_features_one_bloc.dart';
import 'models/welcome_features_one_model.dart';
import 'package:flutter/material.dart';
import 'package:pratinav_s_application9/core/app_export.dart';
import 'package:pratinav_s_application9/widgets/custom_icon_button.dart';
import 'package:pratinav_s_application9/widgets/custom_outlined_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class WelcomeFeaturesOneScreen extends StatelessWidget {
  const WelcomeFeaturesOneScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<WelcomeFeaturesOneBloc>(
        create: (context) => WelcomeFeaturesOneBloc(WelcomeFeaturesOneState(
            welcomeFeaturesOneModelObj: WelcomeFeaturesOneModel()))
          ..add(WelcomeFeaturesOneInitialEvent()),
        child: WelcomeFeaturesOneScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WelcomeFeaturesOneBloc, WelcomeFeaturesOneState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: appTheme.indigo800,
              body: SizedBox(
                  width: double.maxFinite,
                  child: SingleChildScrollView(
                      child: SizedBox(
                          height: SizeUtils.height,
                          width: double.maxFinite,
                          child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                Align(
                                    alignment: Alignment.topCenter,
                                    child: Container(
                                        padding: EdgeInsets.symmetric(
                                            vertical: 17.v),
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    ImageConstant.imgGroup6),
                                                fit: BoxFit.cover)),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              SizedBox(height: 42.v),
                                              SizedBox(
                                                  height: 12.v,
                                                  child: AnimatedSmoothIndicator(
                                                      activeIndex: 0,
                                                      count: 3,
                                                      effect: ScrollingDotsEffect(
                                                          spacing: 12,
                                                          activeDotColor:
                                                              appTheme
                                                                  .whiteA70001,
                                                          dotColor: appTheme
                                                              .whiteA70001,
                                                          dotHeight: 12.v,
                                                          dotWidth: 12.h))),
                                              SizedBox(height: 36.v),
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgGroupDeepPurple300,
                                                  height: 510.v,
                                                  width: 375.h)
                                            ]))),
                                Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 50.h, vertical: 54.v),
                                        decoration: AppDecoration.outlineGray
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder187),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              CustomOutlinedButton(
                                                  width: 68.h,
                                                  text: "lbl_step_3"
                                                      .tr
                                                      .toUpperCase()),
                                              SizedBox(height: 25.v),
                                              SizedBox(
                                                  width: 273.h,
                                                  child: RichText(
                                                      text: TextSpan(children: [
                                                        TextSpan(
                                                            text:
                                                                "msg_loving_supportive2"
                                                                    .tr,
                                                            style: CustomTextStyles
                                                                .headlineLargeffffffff),
                                                        TextSpan(
                                                            text:
                                                                "lbl_community"
                                                                    .tr,
                                                            style: CustomTextStyles
                                                                .headlineLargeffa694f5)
                                                      ]),
                                                      textAlign:
                                                          TextAlign.center)),
                                              SizedBox(height: 17.v),
                                              CustomIconButton(
                                                  height: 80.adaptSize,
                                                  width: 80.adaptSize,
                                                  padding: EdgeInsets.all(28.h),
                                                  decoration:
                                                      IconButtonStyleHelper
                                                          .fillGray,
                                                  onTap: () {
                                                    onTapBtnArrowLeft(context);
                                                  },
                                                  child: CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgArrowleftWhiteA70001)),
                                              SizedBox(height: 17.v)
                                            ])))
                              ]))))));
    });
  }

  /// Navigates to the signInSignUpOneScreen when the action is triggered.
  onTapBtnArrowLeft(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.signInSignUpOneScreen,
    );
  }
}
