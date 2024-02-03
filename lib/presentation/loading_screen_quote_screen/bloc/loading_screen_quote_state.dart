// ignore_for_file: must_be_immutable

part of 'loading_screen_quote_bloc.dart';

/// Represents the state of LoadingScreenQuote in the application.
class LoadingScreenQuoteState extends Equatable {
  LoadingScreenQuoteState({this.loadingScreenQuoteModelObj});

  LoadingScreenQuoteModel? loadingScreenQuoteModelObj;

  @override
  List<Object?> get props => [
        loadingScreenQuoteModelObj,
      ];
  LoadingScreenQuoteState copyWith(
      {LoadingScreenQuoteModel? loadingScreenQuoteModelObj}) {
    return LoadingScreenQuoteState(
      loadingScreenQuoteModelObj:
          loadingScreenQuoteModelObj ?? this.loadingScreenQuoteModelObj,
    );
  }
}
