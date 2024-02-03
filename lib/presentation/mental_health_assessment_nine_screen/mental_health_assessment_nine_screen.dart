import '../mental_health_assessment_nine_screen/widgets/mentalhealthassessmentgrid_item_widget.dart';
import 'bloc/mental_health_assessment_nine_bloc.dart';
import 'models/mental_health_assessment_nine_model.dart';
import 'models/mentalhealthassessmentgrid_item_model.dart';
import 'package:flutter/material.dart';
import 'package:pratinav_s_application9/core/app_export.dart';
import 'package:pratinav_s_application9/widgets/app_bar/appbar_leading_iconbutton_one.dart';
import 'package:pratinav_s_application9/widgets/app_bar/appbar_title.dart';
import 'package:pratinav_s_application9/widgets/app_bar/appbar_trailing_button.dart';
import 'package:pratinav_s_application9/widgets/app_bar/custom_app_bar.dart';
import 'package:pratinav_s_application9/widgets/custom_elevated_button.dart';

class MentalHealthAssessmentNineScreen extends StatelessWidget {
  const MentalHealthAssessmentNineScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<MentalHealthAssessmentNineBloc>(
        create: (context) => MentalHealthAssessmentNineBloc(
            MentalHealthAssessmentNineState(
                mentalHealthAssessmentNineModelObj:
                    MentalHealthAssessmentNineModel()))
          ..add(MentalHealthAssessmentNineInitialEvent()),
        child: MentalHealthAssessmentNineScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 36.v),
                child: Column(children: [
                  Container(
                      width: 254.h,
                      margin: EdgeInsets.only(left: 45.h, right: 44.h),
                      child: Text("msg_are_you_taking_any".tr,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: theme.textTheme.headlineLarge!
                              .copyWith(height: 1.27))),
                  SizedBox(height: 39.v),
                  _buildMentalHealthAssessmentGrid(context),
                  SizedBox(height: 40.v),
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
  Widget _buildMentalHealthAssessmentGrid(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 1.h),
        child: BlocSelector<
                MentalHealthAssessmentNineBloc,
                MentalHealthAssessmentNineState,
                MentalHealthAssessmentNineModel?>(
            selector: (state) => state.mentalHealthAssessmentNineModelObj,
            builder: (context, mentalHealthAssessmentNineModelObj) {
              return GridView.builder(
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisExtent: 165.v,
                      crossAxisCount: 2,
                      mainAxisSpacing: 16.h,
                      crossAxisSpacing: 16.h),
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: mentalHealthAssessmentNineModelObj
                          ?.mentalhealthassessmentgridItemList.length ??
                      0,
                  itemBuilder: (context, index) {
                    MentalhealthassessmentgridItemModel model =
                        mentalHealthAssessmentNineModelObj
                                ?.mentalhealthassessmentgridItemList[index] ??
                            MentalhealthassessmentgridItemModel();
                    return MentalhealthassessmentgridItemWidget(model);
                  });
            }));
  }

  /// Navigates to the mentalHealthAssessmentEightScreen when the action is triggered.
  onTapContrast(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.mentalHealthAssessmentEightScreen,
    );
  }

  /// Navigates to the mentalHealthAssessmentTenScreen when the action is triggered.
  onTapContinue(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.mentalHealthAssessmentTenScreen,
    );
  }
}
