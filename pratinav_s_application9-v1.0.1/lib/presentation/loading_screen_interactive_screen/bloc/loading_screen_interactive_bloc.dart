import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:pratinav_s_application9/presentation/loading_screen_interactive_screen/models/loading_screen_interactive_model.dart';
part 'loading_screen_interactive_event.dart';
part 'loading_screen_interactive_state.dart';

/// A bloc that manages the state of a LoadingScreenInteractive according to the event that is dispatched to it.
class LoadingScreenInteractiveBloc
    extends Bloc<LoadingScreenInteractiveEvent, LoadingScreenInteractiveState> {
  LoadingScreenInteractiveBloc(LoadingScreenInteractiveState initialState)
      : super(initialState) {
    on<LoadingScreenInteractiveInitialEvent>(_onInitialize);
  }

  _onInitialize(
    LoadingScreenInteractiveInitialEvent event,
    Emitter<LoadingScreenInteractiveState> emit,
  ) async {}
}
