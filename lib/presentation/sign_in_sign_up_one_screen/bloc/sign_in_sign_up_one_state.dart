// ignore_for_file: must_be_immutable

part of 'sign_in_sign_up_one_bloc.dart';

/// Represents the state of SignInSignUpOne in the application.
class SignInSignUpOneState extends Equatable {
  SignInSignUpOneState({
    this.passwordController,
    this.passwordController1,
    this.selectedDropDownValue,
    this.isShowPassword = true,
    this.isShowPassword1 = true,
    this.signInSignUpOneModelObj,
  });

  TextEditingController? passwordController;

  TextEditingController? passwordController1;

  SelectionPopupModel? selectedDropDownValue;

  SignInSignUpOneModel? signInSignUpOneModelObj;

  bool isShowPassword;

  bool isShowPassword1;

  @override
  List<Object?> get props => [
        passwordController,
        passwordController1,
        selectedDropDownValue,
        isShowPassword,
        isShowPassword1,
        signInSignUpOneModelObj,
      ];
  SignInSignUpOneState copyWith({
    TextEditingController? passwordController,
    TextEditingController? passwordController1,
    SelectionPopupModel? selectedDropDownValue,
    bool? isShowPassword,
    bool? isShowPassword1,
    SignInSignUpOneModel? signInSignUpOneModelObj,
  }) {
    return SignInSignUpOneState(
      passwordController: passwordController ?? this.passwordController,
      passwordController1: passwordController1 ?? this.passwordController1,
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      isShowPassword1: isShowPassword1 ?? this.isShowPassword1,
      signInSignUpOneModelObj:
          signInSignUpOneModelObj ?? this.signInSignUpOneModelObj,
    );
  }
}
