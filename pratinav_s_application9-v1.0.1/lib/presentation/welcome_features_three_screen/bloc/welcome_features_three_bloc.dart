import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:pratinav_s_application9/presentation/welcome_features_three_screen/models/welcome_features_three_model.dart';
part 'welcome_features_three_event.dart';
part 'welcome_features_three_state.dart';

/// A bloc that manages the state of a WelcomeFeaturesThree according to the event that is dispatched to it.
class WelcomeFeaturesThreeBloc
    extends Bloc<WelcomeFeaturesThreeEvent, WelcomeFeaturesThreeState> {
  WelcomeFeaturesThreeBloc(WelcomeFeaturesThreeState initialState)
      : super(initialState) {
    on<WelcomeFeaturesThreeInitialEvent>(_onInitialize);
  }

  _onInitialize(
    WelcomeFeaturesThreeInitialEvent event,
    Emitter<WelcomeFeaturesThreeState> emit,
  ) async {}
}
