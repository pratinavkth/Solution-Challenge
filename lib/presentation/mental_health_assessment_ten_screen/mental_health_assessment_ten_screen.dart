import '../mental_health_assessment_ten_screen/widgets/tabsingle_item_widget.dart';
import 'bloc/mental_health_assessment_ten_bloc.dart';
import 'models/mental_health_assessment_ten_model.dart';
import 'models/tabsingle_item_model.dart';
import 'package:flutter/material.dart';
import 'package:pratinav_s_application9/core/app_export.dart';
import 'package:pratinav_s_application9/widgets/app_bar/appbar_leading_iconbutton_one.dart';
import 'package:pratinav_s_application9/widgets/app_bar/appbar_title.dart';
import 'package:pratinav_s_application9/widgets/app_bar/appbar_trailing_button_one.dart';
import 'package:pratinav_s_application9/widgets/app_bar/custom_app_bar.dart';
import 'package:pratinav_s_application9/widgets/custom_elevated_button.dart';

class MentalHealthAssessmentTenScreen extends StatelessWidget {
  const MentalHealthAssessmentTenScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<MentalHealthAssessmentTenBloc>(
        create: (context) => MentalHealthAssessmentTenBloc(
            MentalHealthAssessmentTenState(
                mentalHealthAssessmentTenModelObj:
                    MentalHealthAssessmentTenModel()))
          ..add(MentalHealthAssessmentTenInitialEvent()),
        child: MentalHealthAssessmentTenScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 35.v),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          width: 257.h,
                          margin: EdgeInsets.only(left: 43.h, right: 41.h),
                          child: Text("msg_please_specify_your".tr,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: theme.textTheme.headlineLarge!
                                  .copyWith(height: 1.27))),
                      SizedBox(height: 40.v),
                      _buildTabSingle(context),
                      SizedBox(height: 39.v),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                                padding: EdgeInsets.only(bottom: 1.v),
                                child: Text("lbl_selected".tr,
                                    style:
                                        CustomTextStyles.titleSmallSemiBold)),
                            Padding(
                                padding: EdgeInsets.only(left: 8.h),
                                child: Text("msg_aspirin_ibuprofen".tr,
                                    style:
                                        CustomTextStyles.titleSmallYellow90001))
                          ]),
                      SizedBox(height: 3.v)
                    ])),
            bottomNavigationBar: _buildContinue(context)));
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
          AppbarTrailingButtonOne(
              margin: EdgeInsets.symmetric(horizontal: 16.h, vertical: 13.v))
        ]);
  }

  /// Section Widget
  Widget _buildTabSingle(BuildContext context) {
    return BlocSelector<MentalHealthAssessmentTenBloc,
            MentalHealthAssessmentTenState, MentalHealthAssessmentTenModel?>(
        selector: (state) => state.mentalHealthAssessmentTenModelObj,
        builder: (context, mentalHealthAssessmentTenModelObj) {
          return ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (context, index) {
                return SizedBox(height: 8.v);
              },
              itemCount:
                  mentalHealthAssessmentTenModelObj?.tabsingleItemList.length ??
                      0,
              itemBuilder: (context, index) {
                TabsingleItemModel model = mentalHealthAssessmentTenModelObj
                        ?.tabsingleItemList[index] ??
                    TabsingleItemModel();
                return TabsingleItemWidget(model);
              });
        });
  }

  /// Section Widget
  Widget _buildContinue(BuildContext context) {
    return CustomElevatedButton(
        text: "lbl_continue".tr,
        margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 43.v),
        rightIcon: Container(
            margin: EdgeInsets.only(left: 16.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgArrowleftWhiteA70001,
                height: 24.adaptSize,
                width: 24.adaptSize)),
        onPressed: () {
          onTapContinue(context);
        });
  }

  /// Navigates to the mentalHealthAssessmentNineScreen when the action is triggered.
  onTapContrast(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.mentalHealthAssessmentNineScreen,
    );
  }

  /// Navigates to the mentalHealthAssessmentElevenScreen when the action is triggered.
  onTapContinue(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.mentalHealthAssessmentElevenScreen,
    );
  }
}
