// ignore_for_file: must_be_immutable

part of 'welcome_features_bloc.dart';

/// Represents the state of WelcomeFeatures in the application.
class WelcomeFeaturesState extends Equatable {
  WelcomeFeaturesState({this.welcomeFeaturesModelObj});

  WelcomeFeaturesModel? welcomeFeaturesModelObj;

  @override
  List<Object?> get props => [
        welcomeFeaturesModelObj,
      ];
  WelcomeFeaturesState copyWith(
      {WelcomeFeaturesModel? welcomeFeaturesModelObj}) {
    return WelcomeFeaturesState(
      welcomeFeaturesModelObj:
          welcomeFeaturesModelObj ?? this.welcomeFeaturesModelObj,
    );
  }
}
