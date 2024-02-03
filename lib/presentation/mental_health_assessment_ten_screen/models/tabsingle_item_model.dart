import '../../../core/app_export.dart';

/// This class is used in the [tabsingle_item_widget] screen.
class TabsingleItemModel {
  TabsingleItemModel({
    this.dynamicProperty2,
    this.dynamicProperty3,
    this.dynamicProperty4,
    this.dynamicProperty5,
    this.dynamicProperty6,
    this.dynamicProperty7,
    this.dynamicProperty8,
    this.id,
  }) {
    dynamicProperty2 = dynamicProperty2 ?? "B";
    dynamicProperty3 = dynamicProperty3 ?? "C";
    dynamicProperty4 = dynamicProperty4 ?? "...";
    dynamicProperty5 = dynamicProperty5 ?? "X";
    dynamicProperty6 = dynamicProperty6 ?? "Y";
    dynamicProperty7 = dynamicProperty7 ?? "Z";
    dynamicProperty8 = dynamicProperty8 ?? ImageConstant.imgRewindGray600;
    id = id ?? "";
  }

  String? dynamicProperty2;

  String? dynamicProperty3;

  String? dynamicProperty4;

  String? dynamicProperty5;

  String? dynamicProperty6;

  String? dynamicProperty7;

  String? dynamicProperty8;

  String? id;
}
