import 'bloc/welcome_features_bloc.dart';
import 'models/welcome_features_model.dart';
import 'package:flutter/material.dart';
import 'package:pratinav_s_application9/core/app_export.dart';
import 'package:pratinav_s_application9/widgets/custom_icon_button.dart';
import 'package:pratinav_s_application9/widgets/custom_outlined_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class WelcomeFeaturesScreen extends StatelessWidget {
  const WelcomeFeaturesScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<WelcomeFeaturesBloc>(
        create: (context) => WelcomeFeaturesBloc(WelcomeFeaturesState(
            welcomeFeaturesModelObj: WelcomeFeaturesModel()))
          ..add(WelcomeFeaturesInitialEvent()),
        child: WelcomeFeaturesScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WelcomeFeaturesBloc, WelcomeFeaturesState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: appTheme.gray800,
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
                                            horizontal: 157.h, vertical: 60.v),
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    ImageConstant.imgGroup5),
                                                fit: BoxFit.cover)),
                                        child: SizedBox(
                                            height: 12.v,
                                            child: AnimatedSmoothIndicator(
                                                activeIndex: 0,
                                                count: 3,
                                                effect: ScrollingDotsEffect(
                                                    spacing: 12,
                                                    dotColor:
                                                        appTheme.whiteA70001,
                                                    dotHeight: 12.v,
                                                    dotWidth: 12.h))))),
                                Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 33.h, vertical: 48.v),
                                        decoration: AppDecoration.outlineGray
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder187),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              CustomOutlinedButton(
                                                  width: 69.h,
                                                  text: "lbl_step_2"
                                                      .tr
                                                      .toUpperCase()),
                                              SizedBox(height: 24.v),
                                              SizedBox(
                                                  width: 308.h,
                                                  child: RichText(
                                                      text: TextSpan(children: [
                                                        TextSpan(
                                                            text: "lbl_ai".tr,
                                                            style: CustomTextStyles
                                                                .headlineLargeffffffff),
                                                        TextSpan(
                                                            text:
                                                                "msg_mental_journaling"
                                                                    .tr,
                                                            style: CustomTextStyles
                                                                .headlineLargeff736a66)
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
                                                          .imgArrowLeft)),
                                              SizedBox(height: 17.v)
                                            ])))
                              ]))))));
    });
  }

  /// Navigates to the welcomeFeaturesOneScreen when the action is triggered.
  onTapBtnArrowLeft(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.welcomeFeaturesOneScreen,
    );
  }
}
