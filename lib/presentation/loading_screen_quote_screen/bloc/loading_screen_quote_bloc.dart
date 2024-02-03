import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:pratinav_s_application9/presentation/loading_screen_quote_screen/models/loading_screen_quote_model.dart';
part 'loading_screen_quote_event.dart';
part 'loading_screen_quote_state.dart';

/// A bloc that manages the state of a LoadingScreenQuote according to the event that is dispatched to it.
class LoadingScreenQuoteBloc
    extends Bloc<LoadingScreenQuoteEvent, LoadingScreenQuoteState> {
  LoadingScreenQuoteBloc(LoadingScreenQuoteState initialState)
      : super(initialState) {
    on<LoadingScreenQuoteInitialEvent>(_onInitialize);
  }

  _onInitialize(
    LoadingScreenQuoteInitialEvent event,
    Emitter<LoadingScreenQuoteState> emit,
  ) async {}
}
