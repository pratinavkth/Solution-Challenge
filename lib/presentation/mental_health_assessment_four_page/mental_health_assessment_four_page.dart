import 'bloc/mental_health_assessment_four_bloc.dart';
import 'models/mental_health_assessment_four_model.dart';
import 'package:flutter/material.dart';
import 'package:pratinav_s_application9/core/app_export.dart';
import 'package:pratinav_s_application9/widgets/custom_elevated_button.dart';

class MentalHealthAssessmentFourPage extends StatefulWidget {
  const MentalHealthAssessmentFourPage({Key? key}) : super(key: key);

  @override
  MentalHealthAssessmentFourPageState createState() =>
      MentalHealthAssessmentFourPageState();

  static Widget builder(BuildContext context) {
    return BlocProvider<MentalHealthAssessmentFourBloc>(
        create: (context) => MentalHealthAssessmentFourBloc(
            MentalHealthAssessmentFourState(
                mentalHealthAssessmentFourModelObj:
                    MentalHealthAssessmentFourModel()))
          ..add(MentalHealthAssessmentFourInitialEvent()),
        child: MentalHealthAssessmentFourPage());
  }
}

class MentalHealthAssessmentFourPageState
    extends State<MentalHealthAssessmentFourPage>
    with AutomaticKeepAliveClientMixin<MentalHealthAssessmentFourPage> {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MentalHealthAssessmentFourBloc,
        MentalHealthAssessmentFourState>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: Container(
                  width: double.maxFinite,
                  decoration: AppDecoration.fillGray90003,
                  child: Column(children: [
                    SizedBox(height: 54.v),
                    _buildContinue(context)
                  ]))));
    });
  }

  /// Section Widget
  Widget _buildSeventeen(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                  padding: EdgeInsets.only(right: 98.h),
                  child:
                      Text("lbl_kg".tr, style: theme.textTheme.displaySmall)),
              SizedBox(height: 25.v),
              SizedBox(
                  width: double.maxFinite,
                  child:
                      Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                    SizedBox(
                        height: 118.v,
                        child: VerticalDivider(
                            width: 1.h,
                            thickness: 1.v,
                            indent: 47.h,
                            endIndent: 47.h)),
                    Padding(
                        padding: EdgeInsets.only(left: 15.h),
                        child: SizedBox(
                            height: 118.v,
                            child: VerticalDivider(
                                width: 1.h,
                                thickness: 1.v,
                                indent: 47.h,
                                endIndent: 47.h))),
                    Padding(
                        padding: EdgeInsets.only(left: 15.h),
                        child: SizedBox(
                            height: 118.v,
                            child: VerticalDivider(
                                width: 1.h,
                                thickness: 1.v,
                                indent: 47.h,
                                endIndent: 47.h))),
                    Padding(
                        padding: EdgeInsets.only(left: 15.h),
                        child: SizedBox(
                            height: 118.v,
                            child: VerticalDivider(
                                width: 1.h,
                                thickness: 1.v,
                                indent: 47.h,
                                endIndent: 47.h))),
                    Container(
                        height: 118.v,
                        width: 355.h,
                        margin: EdgeInsets.only(left: 3.h),
                        child:
                            Stack(alignment: Alignment.centerLeft, children: [
                          Align(
                              alignment: Alignment.center,
                              child: Container(
                                  height: 118.v,
                                  width: 12.h,
                                  decoration: BoxDecoration(
                                      color: appTheme.lightGreen400,
                                      borderRadius: BorderRadius.circular(6.h),
                                      boxShadow: [
                                        BoxShadow(
                                            color: appTheme.lightGreen40001
                                                .withOpacity(0.25),
                                            spreadRadius: 2.h,
                                            blurRadius: 2.h,
                                            offset: Offset(0, 0))
                                      ]))),
                          Padding(
                              padding: EdgeInsets.only(left: 11.h),
                              child: _buildHelper(context)),
                          Padding(
                              padding: EdgeInsets.only(right: 11.h),
                              child: _buildHelper(context)),
                          Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                  width: 355.h,
                                  margin: EdgeInsets.only(top: 98.v),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text("lbl_126".tr,
                                            style: CustomTextStyles
                                                .titleMediumGray700),
                                        Spacer(flex: 21),
                                        Text("lbl_127".tr,
                                            style: CustomTextStyles
                                                .titleMediumGray700),
                                        Spacer(flex: 56),
                                        Text("lbl_128".tr,
                                            style: CustomTextStyles
                                                .titleMediumGray700),
                                        Spacer(flex: 21),
                                        Text("lbl_129".tr,
                                            style: CustomTextStyles
                                                .titleMediumGray700)
                                      ])))
                        ])),
                    Padding(
                        padding: EdgeInsets.only(left: 4.h),
                        child: SizedBox(
                            height: 118.v,
                            child: VerticalDivider(
                                width: 1.h,
                                thickness: 1.v,
                                indent: 47.h,
                                endIndent: 47.h))),
                    Padding(
                        padding: EdgeInsets.only(left: 15.h),
                        child: SizedBox(
                            height: 118.v,
                            child: VerticalDivider(
                                width: 1.h,
                                thickness: 1.v,
                                indent: 47.h,
                                endIndent: 47.h))),
                    Padding(
                        padding: EdgeInsets.only(left: 15.h),
                        child: SizedBox(
                            height: 118.v,
                            child: VerticalDivider(
                                width: 1.h,
                                thickness: 1.v,
                                indent: 47.h,
                                endIndent: 47.h))),
                    Padding(
                        padding: EdgeInsets.only(left: 15.h),
                        child: SizedBox(
                            height: 118.v,
                            child: VerticalDivider(
                                width: 1.h,
                                thickness: 1.v,
                                indent: 47.h,
                                endIndent: 47.h)))
                  ]))
            ]));
  }

  /// Section Widget
  Widget _buildContinue(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: IntrinsicWidth(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(
              height: 248.v,
              width: 417.h,
              child: Stack(alignment: Alignment.bottomCenter, children: [
                Align(
                    alignment: Alignment.topCenter,
                    child: Text("lbl_128".tr,
                        style: CustomTextStyles.urbanistWhiteA70001ExtraBold)),
                _buildSeventeen(context)
              ])),
          SizedBox(height: 63.v),
          CustomElevatedButton(
              text: "lbl_continue".tr,
              margin: EdgeInsets.symmetric(horizontal: 16.h),
              rightIcon: Container(
                  margin: EdgeInsets.only(left: 16.h),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgArrowleftWhiteA70001,
                      height: 24.adaptSize,
                      width: 24.adaptSize)),
              onPressed: () {
                onTapContinue(context);
              },
              alignment: Alignment.center)
        ])));
  }

  /// Common widget
  Widget _buildHelper(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
              height: 42.v,
              child: VerticalDivider(
                  width: 1.h, thickness: 1.v, indent: 9.h, endIndent: 9.h)),
          Padding(
              padding: EdgeInsets.only(left: 15.h),
              child: SizedBox(
                  height: 42.v,
                  child: VerticalDivider(
                      width: 1.h,
                      thickness: 1.v,
                      indent: 9.h,
                      endIndent: 9.h))),
          Padding(
              padding: EdgeInsets.only(left: 15.h),
              child: SizedBox(
                  height: 42.v,
                  child: VerticalDivider(
                      width: 1.h,
                      thickness: 1.v,
                      indent: 9.h,
                      endIndent: 9.h))),
          Padding(
              padding: EdgeInsets.only(left: 15.h),
              child: SizedBox(
                  height: 42.v,
                  child: VerticalDivider(
                      width: 1.h,
                      thickness: 1.v,
                      indent: 9.h,
                      endIndent: 9.h))),
          Padding(
              padding: EdgeInsets.only(left: 15.h),
              child: SizedBox(
                  height: 42.v,
                  child: VerticalDivider(
                      width: 1.h, thickness: 1.v, color: appTheme.gray700))),
          Padding(
              padding: EdgeInsets.only(left: 15.h),
              child: SizedBox(
                  height: 42.v,
                  child: VerticalDivider(
                      width: 1.h,
                      thickness: 1.v,
                      indent: 9.h,
                      endIndent: 9.h))),
          Padding(
              padding: EdgeInsets.only(left: 15.h),
              child: SizedBox(
                  height: 42.v,
                  child: VerticalDivider(
                      width: 1.h,
                      thickness: 1.v,
                      indent: 9.h,
                      endIndent: 9.h))),
          Padding(
              padding: EdgeInsets.only(left: 15.h),
              child: SizedBox(
                  height: 42.v,
                  child: VerticalDivider(
                      width: 1.h,
                      thickness: 1.v,
                      indent: 9.h,
                      endIndent: 9.h))),
          Padding(
              padding: EdgeInsets.only(left: 15.h),
              child: SizedBox(
                  height: 42.v,
                  child: VerticalDivider(
                      width: 1.h,
                      thickness: 1.v,
                      indent: 9.h,
                      endIndent: 9.h))),
          Padding(
              padding: EdgeInsets.only(left: 15.h),
              child: SizedBox(
                  height: 42.v,
                  child: VerticalDivider(
                      width: 1.h, thickness: 1.v, color: appTheme.gray700)))
        ]);
  }

  /// Navigates to the mentalHealthAssessmentFiveScreen when the action is triggered.
  onTapContinue(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.mentalHealthAssessmentFiveScreen,
    );
  }
}
