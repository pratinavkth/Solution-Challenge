import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:pratinav_s_application9/presentation/welcome_features_screen/models/welcome_features_model.dart';
part 'welcome_features_event.dart';
part 'welcome_features_state.dart';

/// A bloc that manages the state of a WelcomeFeatures according to the event that is dispatched to it.
class WelcomeFeaturesBloc
    extends Bloc<WelcomeFeaturesEvent, WelcomeFeaturesState> {
  WelcomeFeaturesBloc(WelcomeFeaturesState initialState) : super(initialState) {
    on<WelcomeFeaturesInitialEvent>(_onInitialize);
  }

  _onInitialize(
    WelcomeFeaturesInitialEvent event,
    Emitter<WelcomeFeaturesState> emit,
  ) async {}
}
