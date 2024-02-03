// ignore_for_file: must_be_immutable

part of 'welcome_features_two_bloc.dart';

/// Represents the state of WelcomeFeaturesTwo in the application.
class WelcomeFeaturesTwoState extends Equatable {
  WelcomeFeaturesTwoState({this.welcomeFeaturesTwoModelObj});

  WelcomeFeaturesTwoModel? welcomeFeaturesTwoModelObj;

  @override
  List<Object?> get props => [
        welcomeFeaturesTwoModelObj,
      ];
  WelcomeFeaturesTwoState copyWith(
      {WelcomeFeaturesTwoModel? welcomeFeaturesTwoModelObj}) {
    return WelcomeFeaturesTwoState(
      welcomeFeaturesTwoModelObj:
          welcomeFeaturesTwoModelObj ?? this.welcomeFeaturesTwoModelObj,
    );
  }
}
