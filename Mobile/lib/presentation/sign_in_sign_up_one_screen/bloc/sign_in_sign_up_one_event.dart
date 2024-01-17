// ignore_for_file: must_be_immutable

part of 'sign_in_sign_up_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SignInSignUpOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SignInSignUpOneEvent extends Equatable {}

/// Event that is dispatched when the SignInSignUpOne widget is first created.
class SignInSignUpOneInitialEvent extends SignInSignUpOneEvent {
  @override
  List<Object?> get props => [];
}

///event for dropdown selection
class ChangeDropDownEvent extends SignInSignUpOneEvent {
  ChangeDropDownEvent({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing password visibility
class ChangePasswordVisibilityEvent extends SignInSignUpOneEvent {
  ChangePasswordVisibilityEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing password visibility
class ChangePasswordVisibilityEvent1 extends SignInSignUpOneEvent {
  ChangePasswordVisibilityEvent1({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
