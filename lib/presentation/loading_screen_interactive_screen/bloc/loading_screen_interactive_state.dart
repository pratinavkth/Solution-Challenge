// ignore_for_file: must_be_immutable

part of 'loading_screen_interactive_bloc.dart';

/// Represents the state of LoadingScreenInteractive in the application.
class LoadingScreenInteractiveState extends Equatable {
  LoadingScreenInteractiveState({this.loadingScreenInteractiveModelObj});

  LoadingScreenInteractiveModel? loadingScreenInteractiveModelObj;

  @override
  List<Object?> get props => [
        loadingScreenInteractiveModelObj,
      ];
  LoadingScreenInteractiveState copyWith(
      {LoadingScreenInteractiveModel? loadingScreenInteractiveModelObj}) {
    return LoadingScreenInteractiveState(
      loadingScreenInteractiveModelObj: loadingScreenInteractiveModelObj ??
          this.loadingScreenInteractiveModelObj,
    );
  }
}
