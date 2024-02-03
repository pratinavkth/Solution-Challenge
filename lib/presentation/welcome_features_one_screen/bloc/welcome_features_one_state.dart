// ignore_for_file: must_be_immutable

part of 'welcome_features_one_bloc.dart';

/// Represents the state of WelcomeFeaturesOne in the application.
class WelcomeFeaturesOneState extends Equatable {
  WelcomeFeaturesOneState({this.welcomeFeaturesOneModelObj});

  WelcomeFeaturesOneModel? welcomeFeaturesOneModelObj;

  @override
  List<Object?> get props => [
        welcomeFeaturesOneModelObj,
      ];
  WelcomeFeaturesOneState copyWith(
      {WelcomeFeaturesOneModel? welcomeFeaturesOneModelObj}) {
    return WelcomeFeaturesOneState(
      welcomeFeaturesOneModelObj:
          welcomeFeaturesOneModelObj ?? this.welcomeFeaturesOneModelObj,
    );
  }
}
