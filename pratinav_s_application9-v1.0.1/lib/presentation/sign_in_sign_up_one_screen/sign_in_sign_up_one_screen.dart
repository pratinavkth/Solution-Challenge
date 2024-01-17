import 'bloc/sign_in_sign_up_one_bloc.dart';
import 'models/sign_in_sign_up_one_model.dart';
import 'package:flutter/material.dart';
import 'package:pratinav_s_application9/core/app_export.dart';
import 'package:pratinav_s_application9/core/utils/validation_functions.dart';
import 'package:pratinav_s_application9/widgets/app_bar/appbar_title_image.dart';
import 'package:pratinav_s_application9/widgets/app_bar/custom_app_bar.dart';
import 'package:pratinav_s_application9/widgets/custom_drop_down.dart';
import 'package:pratinav_s_application9/widgets/custom_elevated_button.dart';
import 'package:pratinav_s_application9/widgets/custom_outlined_button.dart';
import 'package:pratinav_s_application9/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SignInSignUpOneScreen extends StatelessWidget {
  SignInSignUpOneScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<SignInSignUpOneBloc>(
        create: (context) => SignInSignUpOneBloc(SignInSignUpOneState(
            signInSignUpOneModelObj: SignInSignUpOneModel()))
          ..add(SignInSignUpOneInitialEvent()),
        child: SignInSignUpOneScreen());
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
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  _buildVectorStack(context),
                                  Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 16.h, vertical: 52.v),
                                      child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text("msg_sign_up_for_free".tr,
                                                style: theme
                                                    .textTheme.headlineLarge),
                                            SizedBox(height: 36.v),
                                            _buildInputFieldMasterColumn(
                                                context),
                                            SizedBox(height: 8.v),
                                            CustomOutlinedButton(
                                                height: 32.v,
                                                text:
                                                    "msg_invalid_email_address"
                                                        .tr,
                                                leftIcon: Container(
                                                    margin: EdgeInsets.only(
                                                        right: 10.h),
                                                    child: CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgVideocamera,
                                                        height: 20.adaptSize,
                                                        width: 20.adaptSize)),
                                                buttonStyle: CustomButtonStyles
                                                    .outlineYellow,
                                                buttonTextStyle:
                                                    CustomTextStyles
                                                        .labelLargeYellow90001),
                                            SizedBox(height: 23.v),
                                            _buildFrameColumn(context),
                                            SizedBox(height: 23.v),
                                            _buildFrameColumn1(context),
                                            SizedBox(height: 24.v),
                                            CustomElevatedButton(
                                                text: "lbl_sign_up".tr,
                                                rightIcon: Container(
                                                    margin: EdgeInsets.only(
                                                        left: 16.h),
                                                    child: CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgArrowleftWhiteA70001,
                                                        height: 24.adaptSize,
                                                        width: 24.adaptSize)),
                                                onPressed: () {
                                                  onTapSignUp(context);
                                                }),
                                            SizedBox(height: 41.v),
                                            GestureDetector(
                                                onTap: () {
                                                  onTapTxtAlreadyhavean(
                                                      context);
                                                },
                                                child: RichText(
                                                    text: TextSpan(children: [
                                                      TextSpan(
                                                          text:
                                                              "msg_already_have_an2"
                                                                  .tr,
                                                          style: CustomTextStyles
                                                              .titleSmallffc9c7c5),
                                                      TextSpan(
                                                          text:
                                                              "lbl_sign_in".tr,
                                                          style: CustomTextStyles
                                                              .titleSmallffec7d1c
                                                              .copyWith(
                                                                  decoration:
                                                                      TextDecoration
                                                                          .underline))
                                                    ]),
                                                    textAlign: TextAlign.left)),
                                            SizedBox(height: 4.v)
                                          ]))
                                ])))))));
  }

  /// Section Widget
  Widget _buildVectorStack(BuildContext context) {
    return SizedBox(
        height: 161.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          CustomImageView(
              imagePath: ImageConstant.imgVector161x375,
              height: 161.v,
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
  Widget _buildInputFieldMasterColumn(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_email_address".tr, style: theme.textTheme.titleSmall),
      SizedBox(height: 8.v),
      BlocSelector<SignInSignUpOneBloc, SignInSignUpOneState,
              SignInSignUpOneModel?>(
          selector: (state) => state.signInSignUpOneModelObj,
          builder: (context, signInSignUpOneModelObj) {
            return CustomDropDown(
                icon: Container(
                    margin: EdgeInsets.fromLTRB(30.h, 16.v, 16.h, 16.v),
                    child: CustomImageView(
                        imagePath: ImageConstant.imgMobile,
                        height: 24.adaptSize,
                        width: 24.adaptSize)),
                hintText: "msg_enter_your_email".tr,
                items: signInSignUpOneModelObj?.dropdownItemList ?? [],
                prefix: Container(
                    margin: EdgeInsets.fromLTRB(16.h, 16.v, 8.h, 16.v),
                    child: CustomImageView(
                        imagePath: ImageConstant.imgClock,
                        height: 24.adaptSize,
                        width: 24.adaptSize)),
                prefixConstraints: BoxConstraints(maxHeight: 56.v),
                onChanged: (value) {
                  context
                      .read<SignInSignUpOneBloc>()
                      .add(ChangeDropDownEvent(value: value));
                });
          })
    ]);
  }

  /// Section Widget
  Widget _buildFrameColumn(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_password".tr, style: theme.textTheme.titleSmall),
      SizedBox(height: 8.v),
      BlocBuilder<SignInSignUpOneBloc, SignInSignUpOneState>(
          builder: (context, state) {
        return CustomTextFormField(
            controller: state.passwordController,
            hintText: "msg_enter_your_password".tr,
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
                  context.read<SignInSignUpOneBloc>().add(
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
    ]);
  }

  /// Section Widget
  Widget _buildFrameColumn1(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("msg_password_confirmation".tr, style: theme.textTheme.titleSmall),
      SizedBox(height: 8.v),
      BlocBuilder<SignInSignUpOneBloc, SignInSignUpOneState>(
          builder: (context, state) {
        return CustomTextFormField(
            controller: state.passwordController1,
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
                  context.read<SignInSignUpOneBloc>().add(
                      ChangePasswordVisibilityEvent1(
                          value: !state.isShowPassword1));
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
            obscureText: state.isShowPassword1);
      })
    ]);
  }

  /// Navigates to the mentalHealthAssessmentOneScreen when the action is triggered.
  onTapSignUp(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.mentalHealthAssessmentOneScreen,
    );
  }

  /// Navigates to the signInSignUpScreen when the action is triggered.
  onTapTxtAlreadyhavean(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.signInSignUpScreen,
    );
  }
}
