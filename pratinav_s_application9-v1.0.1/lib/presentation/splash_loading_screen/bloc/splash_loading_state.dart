// ignore_for_file: must_be_immutable

part of 'splash_loading_bloc.dart';

/// Represents the state of SplashLoading in the application.
class SplashLoadingState extends Equatable {
  SplashLoadingState({this.splashLoadingModelObj});

  SplashLoadingModel? splashLoadingModelObj;

  @override
  List<Object?> get props => [
        splashLoadingModelObj,
      ];
  SplashLoadingState copyWith({SplashLoadingModel? splashLoadingModelObj}) {
    return SplashLoadingState(
      splashLoadingModelObj:
          splashLoadingModelObj ?? this.splashLoadingModelObj,
    );
  }
}
