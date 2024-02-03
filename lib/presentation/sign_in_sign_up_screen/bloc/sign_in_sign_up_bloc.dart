import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:pratinav_s_application9/presentation/sign_in_sign_up_screen/models/sign_in_sign_up_model.dart';
part 'sign_in_sign_up_event.dart';
part 'sign_in_sign_up_state.dart';

/// A bloc that manages the state of a SignInSignUp according to the event that is dispatched to it.
class SignInSignUpBloc extends Bloc<SignInSignUpEvent, SignInSignUpState> {
  SignInSignUpBloc(SignInSignUpState initialState) : super(initialState) {
    on<SignInSignUpInitialEvent>(_onInitialize);
    on<ChangePasswordVisibilityEvent>(_changePasswordVisibility);
  }

  _changePasswordVisibility(
    ChangePasswordVisibilityEvent event,
    Emitter<SignInSignUpState> emit,
  ) {
    emit(state.copyWith(isShowPassword: event.value));
  }

  _onInitialize(
    SignInSignUpInitialEvent event,
    Emitter<SignInSignUpState> emit,
  ) async {
    emit(state.copyWith(
        emailController: TextEditingController(),
        passwordController: TextEditingController(),
        isShowPassword: true));
  }
}
