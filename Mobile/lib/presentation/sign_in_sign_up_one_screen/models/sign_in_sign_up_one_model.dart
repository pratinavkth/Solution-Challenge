// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'package:pratinav_s_application9/data/models/selectionPopupModel/selection_popup_model.dart';

/// This class defines the variables used in the [sign_in_sign_up_one_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SignInSignUpOneModel extends Equatable {
  SignInSignUpOneModel({this.dropdownItemList = const []}) {}

  List<SelectionPopupModel> dropdownItemList;

  SignInSignUpOneModel copyWith({List<SelectionPopupModel>? dropdownItemList}) {
    return SignInSignUpOneModel(
      dropdownItemList: dropdownItemList ?? this.dropdownItemList,
    );
  }

  @override
  List<Object?> get props => [dropdownItemList];
}
