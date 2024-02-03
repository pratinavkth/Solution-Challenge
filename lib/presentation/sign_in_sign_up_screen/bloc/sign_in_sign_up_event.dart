// ignore_for_file: must_be_immutable

part of 'sign_in_sign_up_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SignInSignUp widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SignInSignUpEvent extends Equatable {}

/// Event that is dispatched when the SignInSignUp widget is first created.
class SignInSignUpInitialEvent extends SignInSignUpEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing password visibility
class ChangePasswordVisibilityEvent extends SignInSignUpEvent {
  ChangePasswordVisibilityEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
