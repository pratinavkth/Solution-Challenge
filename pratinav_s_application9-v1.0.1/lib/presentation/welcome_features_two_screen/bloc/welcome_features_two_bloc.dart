import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:pratinav_s_application9/presentation/welcome_features_two_screen/models/welcome_features_two_model.dart';
part 'welcome_features_two_event.dart';
part 'welcome_features_two_state.dart';

/// A bloc that manages the state of a WelcomeFeaturesTwo according to the event that is dispatched to it.
class WelcomeFeaturesTwoBloc
    extends Bloc<WelcomeFeaturesTwoEvent, WelcomeFeaturesTwoState> {
  WelcomeFeaturesTwoBloc(WelcomeFeaturesTwoState initialState)
      : super(initialState) {
    on<WelcomeFeaturesTwoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    WelcomeFeaturesTwoInitialEvent event,
    Emitter<WelcomeFeaturesTwoState> emit,
  ) async {}
}
