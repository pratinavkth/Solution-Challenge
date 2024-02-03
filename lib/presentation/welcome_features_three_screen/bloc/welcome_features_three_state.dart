// ignore_for_file: must_be_immutable

part of 'welcome_features_three_bloc.dart';

/// Represents the state of WelcomeFeaturesThree in the application.
class WelcomeFeaturesThreeState extends Equatable {
  WelcomeFeaturesThreeState({this.welcomeFeaturesThreeModelObj});

  WelcomeFeaturesThreeModel? welcomeFeaturesThreeModelObj;

  @override
  List<Object?> get props => [
        welcomeFeaturesThreeModelObj,
      ];
  WelcomeFeaturesThreeState copyWith(
      {WelcomeFeaturesThreeModel? welcomeFeaturesThreeModelObj}) {
    return WelcomeFeaturesThreeState(
      welcomeFeaturesThreeModelObj:
          welcomeFeaturesThreeModelObj ?? this.welcomeFeaturesThreeModelObj,
    );
  }
}
