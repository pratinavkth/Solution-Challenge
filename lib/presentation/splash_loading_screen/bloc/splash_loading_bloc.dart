import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:pratinav_s_application9/presentation/splash_loading_screen/models/splash_loading_model.dart';
part 'splash_loading_event.dart';
part 'splash_loading_state.dart';

/// A bloc that manages the state of a SplashLoading according to the event that is dispatched to it.
class SplashLoadingBloc extends Bloc<SplashLoadingEvent, SplashLoadingState> {
  SplashLoadingBloc(SplashLoadingState initialState) : super(initialState) {
    on<SplashLoadingInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SplashLoadingInitialEvent event,
    Emitter<SplashLoadingState> emit,
  ) async {}
}
