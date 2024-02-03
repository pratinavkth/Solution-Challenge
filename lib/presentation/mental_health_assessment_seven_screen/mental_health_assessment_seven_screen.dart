import '../mental_health_assessment_seven_screen/widgets/userprofile1_item_widget.dart';
import 'bloc/mental_health_assessment_seven_bloc.dart';
import 'models/mental_health_assessment_seven_model.dart';
import 'models/userprofile1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:pratinav_s_application9/core/app_export.dart';
import 'package:pratinav_s_application9/widgets/app_bar/appbar_leading_iconbutton_one.dart';
import 'package:pratinav_s_application9/widgets/app_bar/appbar_title.dart';
import 'package:pratinav_s_application9/widgets/app_bar/appbar_trailing_button.dart';
import 'package:pratinav_s_application9/widgets/app_bar/custom_app_bar.dart';
import 'package:pratinav_s_application9/widgets/custom_elevated_button.dart';

class MentalHealthAssessmentSevenScreen extends StatelessWidget {
  const MentalHealthAssessmentSevenScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<MentalHealthAssessmentSevenBloc>(
        create: (context) => MentalHealthAssessmentSevenBloc(
            MentalHealthAssessmentSevenState(
                mentalHealthAssessmentSevenModelObj:
                    MentalHealthAssessmentSevenModel()))
          ..add(MentalHealthAssessmentSevenInitialEvent()),
        child: MentalHealthAssessmentSevenScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 37.v),
                child: Column(children: [
                  SizedBox(
                      width: 343.h,
                      child: Text("msg_are_you_experiencing".tr,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: theme.textTheme.headlineLarge!
                              .copyWith(height: 1.27))),
                  SizedBox(height: 41.v),
                  _buildUserProfile(context),
                  SizedBox(height: 48.v),
                  CustomElevatedButton(
                      text: "lbl_continue".tr,
                      rightIcon: Container(
                          margin: EdgeInsets.only(left: 16.h),
                          child: CustomImageView(
                              imagePath: ImageConstant.imgArrowleftWhiteA70001,
                              height: 24.adaptSize,
                              width: 24.adaptSize)),
                      onPressed: () {
                        onTapContinue(context);
                      }),
                  SizedBox(height: 5.v)
                ]))));
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
          AppbarTrailingButton(
              margin: EdgeInsets.symmetric(horizontal: 16.h, vertical: 13.v))
        ]);
  }

  /// Section Widget
  Widget _buildUserProfile(BuildContext context) {
    return BlocSelector<
            MentalHealthAssessmentSevenBloc,
            MentalHealthAssessmentSevenState,
            MentalHealthAssessmentSevenModel?>(
        selector: (state) => state.mentalHealthAssessmentSevenModelObj,
        builder: (context, mentalHealthAssessmentSevenModelObj) {
          return ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (context, index) {
                return SizedBox(height: 12.v);
              },
              itemCount: mentalHealthAssessmentSevenModelObj
                      ?.userprofile1ItemList.length ??
                  0,
              itemBuilder: (context, index) {
                Userprofile1ItemModel model =
                    mentalHealthAssessmentSevenModelObj
                            ?.userprofile1ItemList[index] ??
                        Userprofile1ItemModel();
                return Userprofile1ItemWidget(model);
              });
        });
  }

  /// Navigates to the mentalHealthAssessmentSixScreen when the action is triggered.
  onTapContrast(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.mentalHealthAssessmentSixScreen,
    );
  }

  /// Navigates to the mentalHealthAssessmentEightScreen when the action is triggered.
  onTapContinue(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.mentalHealthAssessmentEightScreen,
    );
  }
}
