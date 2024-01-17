import 'bloc/mental_health_assessment_four_tab_container_bloc.dart';
import 'models/mental_health_assessment_four_tab_container_model.dart';
import 'package:flutter/material.dart';
import 'package:pratinav_s_application9/core/app_export.dart';
import 'package:pratinav_s_application9/presentation/mental_health_assessment_four_page/mental_health_assessment_four_page.dart';
import 'package:pratinav_s_application9/widgets/app_bar/appbar_leading_iconbutton_one.dart';
import 'package:pratinav_s_application9/widgets/app_bar/appbar_title.dart';
import 'package:pratinav_s_application9/widgets/app_bar/appbar_trailing_button.dart';
import 'package:pratinav_s_application9/widgets/app_bar/custom_app_bar.dart';

class MentalHealthAssessmentFourTabContainerScreen extends StatefulWidget {
  const MentalHealthAssessmentFourTabContainerScreen({Key? key})
      : super(key: key);

  @override
  MentalHealthAssessmentFourTabContainerScreenState createState() =>
      MentalHealthAssessmentFourTabContainerScreenState();

  static Widget builder(BuildContext context) {
    return BlocProvider<MentalHealthAssessmentFourTabContainerBloc>(
        create: (context) => MentalHealthAssessmentFourTabContainerBloc(
            MentalHealthAssessmentFourTabContainerState(
                mentalHealthAssessmentFourTabContainerModelObj:
                    MentalHealthAssessmentFourTabContainerModel()))
          ..add(MentalHealthAssessmentFourTabContainerInitialEvent()),
        child: MentalHealthAssessmentFourTabContainerScreen());
  }
}

// ignore_for_file: must_be_immutable
class MentalHealthAssessmentFourTabContainerScreenState
    extends State<MentalHealthAssessmentFourTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MentalHealthAssessmentFourTabContainerBloc,
        MentalHealthAssessmentFourTabContainerState>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              appBar: _buildAppBar(context),
              body: SizedBox(
                  width: double.maxFinite,
                  child: Column(children: [
                    SizedBox(height: 40.v),
                    Text("msg_what_s_your_weight".tr,
                        style: theme.textTheme.headlineLarge),
                    SizedBox(height: 45.v),
                    _buildTabview(context),
                    SizedBox(
                        height: 530.v,
                        child: TabBarView(
                            controller: tabviewController,
                            children: [
                              MentalHealthAssessmentFourPage.builder(context),
                              MentalHealthAssessmentFourPage.builder(context)
                            ]))
                  ]))));
    });
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
  Widget _buildTabview(BuildContext context) {
    return Container(
        height: 48.v,
        width: 342.h,
        decoration: BoxDecoration(
            color: appTheme.gray90004,
            borderRadius: BorderRadius.circular(24.h)),
        child: TabBar(
            controller: tabviewController,
            labelPadding: EdgeInsets.zero,
            labelColor: appTheme.whiteA70001,
            labelStyle: TextStyle(
                fontSize: 16.fSize,
                fontFamily: 'Urbanist',
                fontWeight: FontWeight.w800),
            unselectedLabelColor: appTheme.whiteA70001,
            unselectedLabelStyle: TextStyle(
                fontSize: 16.fSize,
                fontFamily: 'Urbanist',
                fontWeight: FontWeight.w800),
            indicator: BoxDecoration(
                color: appTheme.yellow90001,
                borderRadius: BorderRadius.circular(24.h),
                boxShadow: [
                  BoxShadow(
                      color: appTheme.deepOrange4003f,
                      spreadRadius: 2.h,
                      blurRadius: 2.h,
                      offset: Offset(0, 0))
                ]),
            tabs: [
              Tab(child: Text("lbl_kg".tr)),
              Tab(child: Text("lbl_lbs".tr))
            ]));
  }

  /// Navigates to the mentalHealthAssessmentThreeScreen when the action is triggered.
  onTapContrast(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.mentalHealthAssessmentThreeScreen,
    );
  }
}
