import 'bloc/welcome_features_three_bloc.dart';
import 'models/welcome_features_three_model.dart';
import 'package:flutter/material.dart';
import 'package:pratinav_s_application9/core/app_export.dart';
import 'package:pratinav_s_application9/widgets/app_bar/appbar_title_image.dart';
import 'package:pratinav_s_application9/widgets/app_bar/custom_app_bar.dart';
import 'package:pratinav_s_application9/widgets/custom_elevated_button.dart';

class WelcomeFeaturesThreeScreen extends StatelessWidget {
  const WelcomeFeaturesThreeScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<WelcomeFeaturesThreeBloc>(
        create: (context) => WelcomeFeaturesThreeBloc(WelcomeFeaturesThreeState(
            welcomeFeaturesThreeModelObj: WelcomeFeaturesThreeModel()))
          ..add(WelcomeFeaturesThreeInitialEvent()),
        child: WelcomeFeaturesThreeScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WelcomeFeaturesThreeBloc, WelcomeFeaturesThreeState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              appBar: _buildAppBar(context),
              body: Container(
                  width: double.maxFinite,
                  padding:
                      EdgeInsets.symmetric(horizontal: 23.h, vertical: 16.v),
                  child: Column(children: [
                    SizedBox(
                        width: 326.h,
                        child: RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                  text: "msg_welcome_to_the_ultimate2".tr,
                                  style:
                                      CustomTextStyles.headlineLargeffffffff),
                              TextSpan(
                                  text: "lbl_freud".tr,
                                  style:
                                      CustomTextStyles.headlineLargeff926247),
                              TextSpan(
                                  text: "lbl_ui_kit".tr,
                                  style: CustomTextStyles.headlineLargeffffffff)
                            ]),
                            textAlign: TextAlign.center)),
                    SizedBox(height: 18.v),
                    SizedBox(
                        width: 326.h,
                        child: Text("msg_your_mindful_mental".tr,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: CustomTextStyles.titleMediumGray30002
                                .copyWith(height: 1.60))),
                    SizedBox(height: 27.v),
                    CustomImageView(
                        imagePath: ImageConstant.imgGroupLightGreen400,
                        height: 300.adaptSize,
                        width: 300.adaptSize,
                        radius: BorderRadius.circular(150.h)),
                    SizedBox(height: 32.v),
                    CustomElevatedButton(
                        width: 185.h,
                        text: "lbl_get_started".tr,
                        rightIcon: Container(
                            margin: EdgeInsets.only(left: 16.h),
                            child: CustomImageView(
                                imagePath:
                                    ImageConstant.imgArrowleftWhiteA70001,
                                height: 24.adaptSize,
                                width: 24.adaptSize)),
                        onPressed: () {
                          onTapGetStarted(context);
                        }),
                    SizedBox(height: 23.v),
                    GestureDetector(
                        onTap: () {
                          onTapTxtAlreadyhavean3(context);
                        },
                        child: RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                  text: "msg_already_have_an2".tr,
                                  style: CustomTextStyles.titleSmallffe8dcd8),
                              TextSpan(text: "   ".tr),
                              TextSpan(
                                  text: "lbl_sign_in".tr,
                                  style: CustomTextStyles.titleSmallffec7d1c
                                      .copyWith(
                                          decoration: TextDecoration.underline))
                            ]),
                            textAlign: TextAlign.left)),
                    SizedBox(height: 5.v)
                  ]))));
    });
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 118.v,
        centerTitle: true,
        title: AppbarTitleImage(imagePath: ImageConstant.imgClose),
        styleType: Style.bgFill);
  }

  /// Navigates to the welcomeFeaturesTwoScreen when the action is triggered.
  onTapGetStarted(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.welcomeFeaturesTwoScreen,
    );
  }

  /// Navigates to the signInSignUpScreen when the action is triggered.
  onTapTxtAlreadyhavean3(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.signInSignUpScreen,
    );
  }
}
