import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:pratinav_s_application9/presentation/sign_in_sign_up_one_screen/models/sign_in_sign_up_one_model.dart';
part 'sign_in_sign_up_one_event.dart';
part 'sign_in_sign_up_one_state.dart';

/// A bloc that manages the state of a SignInSignUpOne according to the event that is dispatched to it.
class SignInSignUpOneBloc
    extends Bloc<SignInSignUpOneEvent, SignInSignUpOneState> {
  SignInSignUpOneBloc(SignInSignUpOneState initialState) : super(initialState) {
    on<SignInSignUpOneInitialEvent>(_onInitialize);
    on<ChangeDropDownEvent>(_changeDropDown);
    on<ChangePasswordVisibilityEvent>(_changePasswordVisibility);
    on<ChangePasswordVisibilityEvent1>(_changePasswordVisibility1);
  }

  _changeDropDown(
    ChangeDropDownEvent event,
    Emitter<SignInSignUpOneState> emit,
  ) {
    emit(state.copyWith(selectedDropDownValue: event.value));
  }

  _changePasswordVisibility(
    ChangePasswordVisibilityEvent event,
    Emitter<SignInSignUpOneState> emit,
  ) {
    emit(state.copyWith(isShowPassword: event.value));
  }

  _changePasswordVisibility1(
    ChangePasswordVisibilityEvent1 event,
    Emitter<SignInSignUpOneState> emit,
  ) {
    emit(state.copyWith(isShowPassword1: event.value));
  }

  List<SelectionPopupModel> fillDropdownItemList() {
    return [
      SelectionPopupModel(id: 1, title: "Item One", isSelected: true),
      SelectionPopupModel(id: 2, title: "Item Two"),
      SelectionPopupModel(id: 3, title: "Item Three")
    ];
  }

  _onInitialize(
    SignInSignUpOneInitialEvent event,
    Emitter<SignInSignUpOneState> emit,
  ) async {
    emit(state.copyWith(
        passwordController: TextEditingController(),
        passwordController1: TextEditingController(),
        isShowPassword: true,
        isShowPassword1: true));
    emit(state.copyWith(
        signInSignUpOneModelObj: state.signInSignUpOneModelObj
            ?.copyWith(dropdownItemList: fillDropdownItemList())));
  }
}
