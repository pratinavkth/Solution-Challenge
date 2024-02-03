import 'bloc/app_navigation_bloc.dart';
import 'models/app_navigation_model.dart';
import 'package:flutter/material.dart';
import 'package:pratinav_s_application9/core/app_export.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<AppNavigationBloc>(
      create: (context) => AppNavigationBloc(AppNavigationState(
        appNavigationModelObj: AppNavigationModel(),
      ))
        ..add(AppNavigationInitialEvent()),
      child: AppNavigationScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppNavigationBloc, AppNavigationState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: Color(0XFFFFFFFF),
            body: SizedBox(
              width: double.maxFinite,
              child: Column(
                children: [
                  _buildAppNavigation(context),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0XFFFFFFFF),
                        ),
                        child: Column(
                          children: [
                            _buildScreenTitle(
                              context,
                              screenTitle: "Splash".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.splashScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Welcome & Features".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.welcomeFeaturesScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Welcome & Features Two".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.welcomeFeaturesTwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Sign In & Sign Up One".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.signInSignUpOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Sign In & Sign Up".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.signInSignUpScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Welcome & Features One".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.welcomeFeaturesOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Loading Screen Quote".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.loadingScreenQuoteScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Loading Screen Interactive".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.loadingScreenInteractiveScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Splash & Loading".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.splashLoadingScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Welcome & Features Three".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.welcomeFeaturesThreeScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "AI Chatbot Conversation".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.aiChatbotConversationScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Home page chatbot - Container".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.homePageChatbotContainerScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Home Page".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.homePageScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Mental Health Assessment  One".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.mentalHealthAssessmentOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Mental Health Assessment Two".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.mentalHealthAssessmentTwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Mental Health Assessment Three".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.mentalHealthAssessmentThreeScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle:
                                  "Mental Health Assessment Four - Tab Container"
                                      .tr,
                              onTapScreenTitle: () => onTapScreenTitle(AppRoutes
                                  .mentalHealthAssessmentFourTabContainerScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Mental Health Assessment Five".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.mentalHealthAssessmentFiveScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Mental Health Assessment Six".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.mentalHealthAssessmentSixScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Mental Health Assessment Seven".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.mentalHealthAssessmentSevenScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Mental Health Assessment  Eight".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.mentalHealthAssessmentEightScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Mental Health Assessment Nine".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.mentalHealthAssessmentNineScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Mental Health Assessment Ten".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.mentalHealthAssessmentTenScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Mental Health Assessment Eleven".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.mentalHealthAssessmentElevenScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Mental Health Assessment Twelve".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.mentalHealthAssessmentTwelveScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle:
                                  "Mental Health Assessment Fourteen".tr,
                              onTapScreenTitle: () => onTapScreenTitle(AppRoutes
                                  .mentalHealthAssessmentFourteenScreen),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app."
                    .tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    NavigatorService.pushNamed(routeName);
  }
}
