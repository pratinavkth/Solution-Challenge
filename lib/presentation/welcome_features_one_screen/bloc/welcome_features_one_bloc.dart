import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:pratinav_s_application9/presentation/welcome_features_one_screen/models/welcome_features_one_model.dart';
part 'welcome_features_one_event.dart';
part 'welcome_features_one_state.dart';

/// A bloc that manages the state of a WelcomeFeaturesOne according to the event that is dispatched to it.
class WelcomeFeaturesOneBloc
    extends Bloc<WelcomeFeaturesOneEvent, WelcomeFeaturesOneState> {
  WelcomeFeaturesOneBloc(WelcomeFeaturesOneState initialState)
      : super(initialState) {
    on<WelcomeFeaturesOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    WelcomeFeaturesOneInitialEvent event,
    Emitter<WelcomeFeaturesOneState> emit,
  ) async {}
}
