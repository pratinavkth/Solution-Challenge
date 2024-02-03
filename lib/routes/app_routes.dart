import 'package:flutter/material.dart';
import 'package:pratinav_s_application9/presentation/splash_screen/splash_screen.dart';
import 'package:pratinav_s_application9/presentation/welcome_features_screen/welcome_features_screen.dart';
import 'package:pratinav_s_application9/presentation/welcome_features_two_screen/welcome_features_two_screen.dart';
import 'package:pratinav_s_application9/presentation/sign_in_sign_up_one_screen/sign_in_sign_up_one_screen.dart';
import 'package:pratinav_s_application9/presentation/sign_in_sign_up_screen/sign_in_sign_up_screen.dart';
import 'package:pratinav_s_application9/presentation/welcome_features_one_screen/welcome_features_one_screen.dart';
import 'package:pratinav_s_application9/presentation/loading_screen_quote_screen/loading_screen_quote_screen.dart';
import 'package:pratinav_s_application9/presentation/loading_screen_interactive_screen/loading_screen_interactive_screen.dart';
import 'package:pratinav_s_application9/presentation/splash_loading_screen/splash_loading_screen.dart';
import 'package:pratinav_s_application9/presentation/welcome_features_three_screen/welcome_features_three_screen.dart';
import 'package:pratinav_s_application9/presentation/ai_chatbot_conversation_screen/ai_chatbot_conversation_screen.dart';
import 'package:pratinav_s_application9/presentation/home_page_chatbot_container_screen/home_page_chatbot_container_screen.dart';
import 'package:pratinav_s_application9/presentation/home_page_screen/home_page_screen.dart';
import 'package:pratinav_s_application9/presentation/mental_health_assessment_one_screen/mental_health_assessment_one_screen.dart';
import 'package:pratinav_s_application9/presentation/mental_health_assessment_two_screen/mental_health_assessment_two_screen.dart';
import 'package:pratinav_s_application9/presentation/mental_health_assessment_three_screen/mental_health_assessment_three_screen.dart';
import 'package:pratinav_s_application9/presentation/mental_health_assessment_four_tab_container_screen/mental_health_assessment_four_tab_container_screen.dart';
import 'package:pratinav_s_application9/presentation/mental_health_assessment_five_screen/mental_health_assessment_five_screen.dart';
import 'package:pratinav_s_application9/presentation/mental_health_assessment_six_screen/mental_health_assessment_six_screen.dart';
import 'package:pratinav_s_application9/presentation/mental_health_assessment_seven_screen/mental_health_assessment_seven_screen.dart';
import 'package:pratinav_s_application9/presentation/mental_health_assessment_eight_screen/mental_health_assessment_eight_screen.dart';
import 'package:pratinav_s_application9/presentation/mental_health_assessment_nine_screen/mental_health_assessment_nine_screen.dart';
import 'package:pratinav_s_application9/presentation/mental_health_assessment_ten_screen/mental_health_assessment_ten_screen.dart';
import 'package:pratinav_s_application9/presentation/mental_health_assessment_eleven_screen/mental_health_assessment_eleven_screen.dart';
import 'package:pratinav_s_application9/presentation/mental_health_assessment_twelve_screen/mental_health_assessment_twelve_screen.dart';
import 'package:pratinav_s_application9/presentation/mental_health_assessment_fourteen_screen/mental_health_assessment_fourteen_screen.dart';
import 'package:pratinav_s_application9/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String welcomeFeaturesScreen = '/welcome_features_screen';

  static const String welcomeFeaturesTwoScreen = '/welcome_features_two_screen';

  static const String signInSignUpOneScreen = '/sign_in_sign_up_one_screen';

  static const String signInSignUpScreen = '/sign_in_sign_up_screen';

  static const String welcomeFeaturesOneScreen = '/welcome_features_one_screen';

  static const String loadingScreenQuoteScreen = '/loading_screen_quote_screen';

  static const String loadingScreenInteractiveScreen =
      '/loading_screen_interactive_screen';

  static const String splashLoadingScreen = '/splash_loading_screen';

  static const String welcomeFeaturesThreeScreen =
      '/welcome_features_three_screen';

  static const String aiChatbotConversationScreen =
      '/ai_chatbot_conversation_screen';

  static const String homePageChatbotPage = '/home_page_chatbot_page';

  static const String homePageChatbotContainerScreen =
      '/home_page_chatbot_container_screen';

  static const String homePageScreen = '/home_page_screen';

  static const String mentalHealthAssessmentOneScreen =
      '/mental_health_assessment_one_screen';

  static const String mentalHealthAssessmentTwoScreen =
      '/mental_health_assessment_two_screen';

  static const String mentalHealthAssessmentThreeScreen =
      '/mental_health_assessment_three_screen';

  static const String mentalHealthAssessmentFourPage =
      '/mental_health_assessment_four_page';

  static const String mentalHealthAssessmentFourTabContainerScreen =
      '/mental_health_assessment_four_tab_container_screen';

  static const String mentalHealthAssessmentFiveScreen =
      '/mental_health_assessment_five_screen';

  static const String mentalHealthAssessmentSixScreen =
      '/mental_health_assessment_six_screen';

  static const String mentalHealthAssessmentSevenScreen =
      '/mental_health_assessment_seven_screen';

  static const String mentalHealthAssessmentEightScreen =
      '/mental_health_assessment_eight_screen';

  static const String mentalHealthAssessmentNineScreen =
      '/mental_health_assessment_nine_screen';

  static const String mentalHealthAssessmentTenScreen =
      '/mental_health_assessment_ten_screen';

  static const String mentalHealthAssessmentElevenScreen =
      '/mental_health_assessment_eleven_screen';

  static const String mentalHealthAssessmentTwelveScreen =
      '/mental_health_assessment_twelve_screen';

  static const String mentalHealthAssessmentFourteenScreen =
      '/mental_health_assessment_fourteen_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        splashScreen: SplashScreen.builder,
        welcomeFeaturesScreen: WelcomeFeaturesScreen.builder,
        welcomeFeaturesTwoScreen: WelcomeFeaturesTwoScreen.builder,
        signInSignUpOneScreen: SignInSignUpOneScreen.builder,
        signInSignUpScreen: SignInSignUpScreen.builder,
        welcomeFeaturesOneScreen: WelcomeFeaturesOneScreen.builder,
        loadingScreenQuoteScreen: LoadingScreenQuoteScreen.builder,
        loadingScreenInteractiveScreen: LoadingScreenInteractiveScreen.builder,
        splashLoadingScreen: SplashLoadingScreen.builder,
        welcomeFeaturesThreeScreen: WelcomeFeaturesThreeScreen.builder,
        aiChatbotConversationScreen: AiChatbotConversationScreen.builder,
        homePageChatbotContainerScreen: HomePageChatbotContainerScreen.builder,
        homePageScreen: HomePageScreen.builder,
        mentalHealthAssessmentOneScreen:
            MentalHealthAssessmentOneScreen.builder,
        mentalHealthAssessmentTwoScreen:
            MentalHealthAssessmentTwoScreen.builder,
        mentalHealthAssessmentThreeScreen:
            MentalHealthAssessmentThreeScreen.builder,
        mentalHealthAssessmentFourTabContainerScreen:
            MentalHealthAssessmentFourTabContainerScreen.builder,
        mentalHealthAssessmentFiveScreen:
            MentalHealthAssessmentFiveScreen.builder,
        mentalHealthAssessmentSixScreen:
            MentalHealthAssessmentSixScreen.builder,
        mentalHealthAssessmentSevenScreen:
            MentalHealthAssessmentSevenScreen.builder,
        mentalHealthAssessmentEightScreen:
            MentalHealthAssessmentEightScreen.builder,
        mentalHealthAssessmentNineScreen:
            MentalHealthAssessmentNineScreen.builder,
        mentalHealthAssessmentTenScreen:
            MentalHealthAssessmentTenScreen.builder,
        mentalHealthAssessmentElevenScreen:
            MentalHealthAssessmentElevenScreen.builder,
        mentalHealthAssessmentTwelveScreen:
            MentalHealthAssessmentTwelveScreen.builder,
        mentalHealthAssessmentFourteenScreen:
            MentalHealthAssessmentFourteenScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: SplashScreen.builder
      };
}
