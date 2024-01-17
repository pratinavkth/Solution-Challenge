import 'bloc/sign_in_sign_up_bloc.dart';
import 'models/sign_in_sign_up_model.dart';
import 'package:flutter/material.dart';
import 'package:pratinav_s_application9/core/app_export.dart';
import 'package:pratinav_s_application9/core/utils/validation_functions.dart';
import 'package:pratinav_s_application9/widgets/app_bar/appbar_title_image.dart';
import 'package:pratinav_s_application9/widgets/app_bar/custom_app_bar.dart';
import 'package:pratinav_s_application9/widgets/custom_elevated_button.dart';
import 'package:pratinav_s_application9/widgets/custom_icon_button.dart';
import 'package:pratinav_s_application9/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SignInSignUpScreen extends StatelessWidget {
  SignInSignUpScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<SignInSignUpBloc>(
        create: (context) => SignInSignUpBloc(
            SignInSignUpState(signInSignUpModelObj: SignInSignUpModel()))
          ..add(SignInSignUpInitialEvent()),
        child: SignInSignUpScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Form(
                        key: _formKey,
                        child: SizedBox(
                            width: double.maxFinite,
                            child: Column(children: [
                              _buildMainStack(context),
                              Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 13.h, vertical: 52.v),
                                  child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text("msg_sign_in_to_freud_ai".tr,
                                            style:
                                                theme.textTheme.headlineLarge),
                                        SizedBox(height: 45.v),
                                        _buildSignInFrame(context),
                                        SizedBox(height: 23.v),
                                        _buildPasswordFrame(context),
                                        SizedBox(height: 24.v),
                                        CustomElevatedButton(
                                            text: "lbl_sign_in2".tr,
                                            rightIcon: Container(
                                                margin:
                                                    EdgeInsets.only(left: 16.h),
                                                child: CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgArrowleftWhiteA70001,
                                                    height: 24.adaptSize,
                                                    width: 24.adaptSize)),
                                            onPressed: () {
                                              onTapSignIn(context);
                                            }),
                                        SizedBox(height: 48.v),
                                        Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              CustomIconButton(
                                                  height: 56.adaptSize,
                                                  width: 56.adaptSize,
                                                  padding: EdgeInsets.all(15.h),
                                                  decoration:
                                                      IconButtonStyleHelper
                                                          .outlinePrimary,
                                                  child: CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgFrame)),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 8.h),
                                                  child: CustomIconButton(
                                                      height: 56.adaptSize,
                                                      width: 56.adaptSize,
                                                      padding:
                                                          EdgeInsets.all(16.h),
                                                      decoration:
                                                          IconButtonStyleHelper
                                                              .outlinePrimary,
                                                      child: CustomImageView(
                                                          imagePath: ImageConstant
                                                              .imgFrameWhiteA70001))),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 8.h),
                                                  child: CustomIconButton(
                                                      height: 56.adaptSize,
                                                      width: 56.adaptSize,
                                                      padding:
                                                          EdgeInsets.all(15.h),
                                                      decoration:
                                                          IconButtonStyleHelper
                                                              .outlinePrimary,
                                                      child: CustomImageView(
                                                          imagePath: ImageConstant
                                                              .imgFrameWhiteA7000156x56)))
                                            ]),
                                        SizedBox(height: 49.v),
                                        RichText(
                                            text: TextSpan(children: [
                                              TextSpan(
                                                  text:
                                                      "msg_don_t_have_an_account2"
                                                          .tr,
                                                  style: CustomTextStyles
                                                      .titleSmallffc9c7c5),
                                              TextSpan(
                                                  text: "lbl_sign_up2".tr,
                                                  style: CustomTextStyles
                                                      .titleSmallffec7d1c
                                                      .copyWith(
                                                          decoration:
                                                              TextDecoration
                                                                  .underline))
                                            ]),
                                            textAlign: TextAlign.left),
                                        SizedBox(height: 8.v),
                                        Text("lbl_forgot_password".tr,
                                            style: CustomTextStyles
                                                .titleSmallYellow90001
                                                .copyWith(
                                                    decoration: TextDecoration
                                                        .underline)),
                                        SizedBox(height: 4.v)
                                      ]))
                            ])))))));
  }

  /// Section Widget
  Widget _buildMainStack(BuildContext context) {
    return SizedBox(
        height: 160.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          CustomImageView(
              imagePath: ImageConstant.imgVector160x375,
              height: 160.v,
              width: 375.h,
              alignment: Alignment.center),
          CustomAppBar(
              height: 96.v,
              centerTitle: true,
              title: AppbarTitleImage(
                  imagePath: ImageConstant.imgVectorWhiteA70001))
        ]));
  }

  /// Section Widget
  Widget _buildSignInFrame(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 1.h, right: 5.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("lbl_email_address".tr, style: theme.textTheme.titleSmall),
          SizedBox(height: 8.v),
          BlocSelector<SignInSignUpBloc, SignInSignUpState,
                  TextEditingController?>(
              selector: (state) => state.emailController,
              builder: (context, emailController) {
                return CustomTextFormField(
                    controller: emailController,
                    hintText: "msg_princesskaguya_gmail_co".tr,
                    prefix: Container(
                        margin: EdgeInsets.fromLTRB(16.h, 16.v, 8.h, 16.v),
                        child: CustomImageView(
                            imagePath: ImageConstant.imgClockWhiteA70001,
                            height: 24.adaptSize,
                            width: 24.adaptSize)),
                    prefixConstraints: BoxConstraints(maxHeight: 56.v),
                    suffix: Container(
                        margin: EdgeInsets.fromLTRB(30.h, 16.v, 16.h, 16.v),
                        child: CustomImageView(
                            imagePath: ImageConstant.imgMobile,
                            height: 24.adaptSize,
                            width: 24.adaptSize)),
                    suffixConstraints: BoxConstraints(maxHeight: 56.v));
              })
        ]));
  }

  /// Section Widget
  Widget _buildPasswordFrame(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 1.h, right: 5.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("lbl_password".tr, style: theme.textTheme.titleSmall),
          SizedBox(height: 8.v),
          BlocBuilder<SignInSignUpBloc, SignInSignUpState>(
              builder: (context, state) {
            return CustomTextFormField(
                controller: state.passwordController,
                hintText: "msg_enter_your_password".tr,
                textInputAction: TextInputAction.done,
                textInputType: TextInputType.visiblePassword,
                prefix: Container(
                    margin: EdgeInsets.fromLTRB(16.h, 16.v, 8.h, 16.v),
                    child: CustomImageView(
                        imagePath: ImageConstant.imgLocation,
                        height: 24.adaptSize,
                        width: 24.adaptSize)),
                prefixConstraints: BoxConstraints(maxHeight: 56.v),
                suffix: InkWell(
                    onTap: () {
                      context.read<SignInSignUpBloc>().add(
                          ChangePasswordVisibilityEvent(
                              value: !state.isShowPassword));
                    },
                    child: Container(
                        margin: EdgeInsets.fromLTRB(30.h, 16.v, 16.h, 16.v),
                        child: CustomImageView(
                            imagePath: ImageConstant.imgUser,
                            height: 24.adaptSize,
                            width: 24.adaptSize))),
                suffixConstraints: BoxConstraints(maxHeight: 56.v),
                validator: (value) {
                  if (value == null ||
                      (!isValidPassword(value, isRequired: true))) {
                    return "err_msg_please_enter_valid_password".tr;
                  }
                  return null;
                },
                obscureText: state.isShowPassword);
          })
        ]));
  }

  /// Navigates to the mentalHealthAssessmentOneScreen when the action is triggered.
  onTapSignIn(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.mentalHealthAssessmentOneScreen,
    );
  }
}
