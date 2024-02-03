import 'bloc/mental_health_assessment_five_bloc.dart';
import 'models/mental_health_assessment_five_model.dart';
import 'package:flutter/material.dart';
import 'package:pratinav_s_application9/core/app_export.dart';
import 'package:pratinav_s_application9/widgets/app_bar/appbar_leading_iconbutton_one.dart';
import 'package:pratinav_s_application9/widgets/app_bar/appbar_title.dart';
import 'package:pratinav_s_application9/widgets/app_bar/appbar_trailing_button.dart';
import 'package:pratinav_s_application9/widgets/app_bar/custom_app_bar.dart';

class MentalHealthAssessmentFiveScreen extends StatelessWidget {
  const MentalHealthAssessmentFiveScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<MentalHealthAssessmentFiveBloc>(
      create: (context) =>
          MentalHealthAssessmentFiveBloc(MentalHealthAssessmentFiveState(
        mentalHealthAssessmentFiveModelObj: MentalHealthAssessmentFiveModel(),
      ))
            ..add(MentalHealthAssessmentFiveInitialEvent()),
      child: MentalHealthAssessmentFiveScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MentalHealthAssessmentFiveBloc,
        MentalHealthAssessmentFiveState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
              width: SizeUtils.width,
              child: SingleChildScrollView(
                padding: EdgeInsets.only(top: 36.v),
                child: Column(
                  children: [
                    Container(
                      width: 282.h,
                      margin: EdgeInsets.only(
                        left: 46.h,
                        right: 45.h,
                      ),
                      child: Text(
                        "msg_how_would_you_describe".tr,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: theme.textTheme.headlineLarge!.copyWith(
                          height: 1.27,
                        ),
                      ),
                    ),
                    SizedBox(height: 40.v),
                    Text(
                      "lbl_i_feel_neutral".tr,
                      style: CustomTextStyles.titleLargeGray500,
                    ),
                    SizedBox(height: 59.v),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 25.v,
                          width: 10.h,
                          decoration: BoxDecoration(
                            color: appTheme.gray80003,
                            borderRadius: BorderRadius.circular(
                              5.h,
                            ),
                          ),
                        ),
                        Container(
                          height: 25.v,
                          width: 10.h,
                          margin: EdgeInsets.only(left: 50.h),
                          decoration: BoxDecoration(
                            color: appTheme.gray80003,
                            borderRadius: BorderRadius.circular(
                              5.h,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 15.v),
                    Container(
                      height: 10.v,
                      width: 70.h,
                      decoration: BoxDecoration(
                        color: appTheme.gray80003,
                        borderRadius: BorderRadius.circular(
                          5.h,
                        ),
                      ),
                    ),
                    SizedBox(height: 59.v),
                    CustomImageView(
                      imagePath: ImageConstant.imgMobileGray400,
                      height: 48.adaptSize,
                      width: 48.adaptSize,
                    ),
                    SizedBox(height: 96.v),
                    SizedBox(
                      height: 525.v,
                      width: double.maxFinite,
                      child: Stack(
                        alignment: Alignment.topCenter,
                        children: [
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: SizedBox(
                              height: 422.v,
                              width: double.maxFinite,
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgVector422x375,
                                    height: 422.v,
                                    width: 375.h,
                                    alignment: Alignment.center,
                                  ),
                                  Align(
                                    alignment: Alignment.center,
                                    child: SizedBox(
                                      height: 422.v,
                                      width: double.maxFinite,
                                      child: Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          Align(
                                            alignment: Alignment.center,
                                            child: SizedBox(
                                              height: 422.v,
                                              width: double.maxFinite,
                                              child: CircularProgressIndicator(
                                                value: 0.5,
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.center,
                                            child: SizedBox(
                                              height: 422.v,
                                              width: double.maxFinite,
                                              child: CircularProgressIndicator(
                                                value: 0.5,
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.center,
                                            child: SizedBox(
                                              height: 422.v,
                                              width: double.maxFinite,
                                              child: CircularProgressIndicator(
                                                value: 0.5,
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.center,
                                            child: SizedBox(
                                              height: 422.v,
                                              width: double.maxFinite,
                                              child: CircularProgressIndicator(
                                                value: 0.5,
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.center,
                                            child: SizedBox(
                                              height: 422.v,
                                              width: double.maxFinite,
                                              child: CircularProgressIndicator(
                                                value: 0.5,
                                                strokeWidth: 160.h,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topCenter,
                            child: Container(
                              height: 86.v,
                              width: 37.h,
                              margin: EdgeInsets.only(top: 48.v),
                              child: Stack(
                                alignment: Alignment.bottomCenter,
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgUserPrimary,
                                    height: 86.v,
                                    width: 37.h,
                                    alignment: Alignment.center,
                                  ),
                                  Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Container(
                                      height: 12.adaptSize,
                                      width: 12.adaptSize,
                                      margin: EdgeInsets.only(bottom: 10.v),
                                      decoration: BoxDecoration(
                                        color: appTheme.gray90003,
                                        borderRadius: BorderRadius.circular(
                                          6.h,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgSettingsLime900,
                            height: 37.v,
                            width: 52.h,
                            alignment: Alignment.topCenter,
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgTelevisionGray80002,
                            height: 68.v,
                            width: 74.h,
                            alignment: Alignment.topRight,
                            margin: EdgeInsets.only(
                              top: 25.v,
                              right: 6.h,
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgSettingsLime90001,
                            height: 64.v,
                            width: 67.h,
                            alignment: Alignment.topLeft,
                            margin: EdgeInsets.only(
                              left: 6.h,
                              top: 24.v,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 64.h,
      leading: AppbarLeadingIconbuttonOne(
        imagePath: ImageConstant.imgContrast,
        margin: EdgeInsets.only(
          left: 16.h,
          top: 4.v,
          bottom: 4.v,
        ),
      ),
      title: AppbarTitle(
        text: "lbl_assessment".tr,
        margin: EdgeInsets.only(left: 12.h),
      ),
      actions: [
        AppbarTrailingButton(
          margin: EdgeInsets.symmetric(
            horizontal: 16.h,
            vertical: 13.v,
          ),
        ),
      ],
    );
  }
}
