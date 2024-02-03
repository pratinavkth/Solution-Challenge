// ignore_for_file: must_be_immutable

part of 'sign_in_sign_up_bloc.dart';

/// Represents the state of SignInSignUp in the application.
class SignInSignUpState extends Equatable {
  SignInSignUpState({
    this.emailController,
    this.passwordController,
    this.isShowPassword = true,
    this.signInSignUpModelObj,
  });

  TextEditingController? emailController;

  TextEditingController? passwordController;

  SignInSignUpModel? signInSignUpModelObj;

  bool isShowPassword;

  @override
  List<Object?> get props => [
        emailController,
        passwordController,
        isShowPassword,
        signInSignUpModelObj,
      ];
  SignInSignUpState copyWith({
    TextEditingController? emailController,
    TextEditingController? passwordController,
    bool? isShowPassword,
    SignInSignUpModel? signInSignUpModelObj,
  }) {
    return SignInSignUpState(
      emailController: emailController ?? this.emailController,
      passwordController: passwordController ?? this.passwordController,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      signInSignUpModelObj: signInSignUpModelObj ?? this.signInSignUpModelObj,
    );
  }
}
