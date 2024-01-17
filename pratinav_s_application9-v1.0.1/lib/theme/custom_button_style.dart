import 'dart:ui';
import 'package:pratinav_s_application9/core/app_export.dart';
import 'package:flutter/material.dart';

/// A class that offers pre-defined button styles for customizing button appearance.
class CustomButtonStyles {
  // Filled button style
  static ButtonStyle get fillGray => ElevatedButton.styleFrom(
        backgroundColor: appTheme.gray80003,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.h),
        ),
      );
  static ButtonStyle get fillGrayTL28 => ElevatedButton.styleFrom(
        backgroundColor: appTheme.gray80002,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(28.h),
        ),
      );
  static ButtonStyle get fillGrayTL281 => ElevatedButton.styleFrom(
        backgroundColor: appTheme.gray90004,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(28.h),
        ),
      );
  static ButtonStyle get fillLightGreen => ElevatedButton.styleFrom(
        backgroundColor: appTheme.lightGreen400,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.h),
        ),
      );
  static ButtonStyle get fillWhiteA => ElevatedButton.styleFrom(
        backgroundColor: appTheme.whiteA70001,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.h),
        ),
      );

  // Outline button style
  static ButtonStyle get outlineDeepOrangeF => ElevatedButton.styleFrom(
        backgroundColor: appTheme.yellow90001,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.h),
        ),
        shadowColor: appTheme.deepOrange4003f,
        elevation: 0,
      );
  static ButtonStyle get outlineLightGreen => ElevatedButton.styleFrom(
        backgroundColor: appTheme.lightGreen400,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(28.h),
        ),
        shadowColor: appTheme.lightGreen40001.withOpacity(0.25),
        elevation: 0,
      );
  static ButtonStyle get outlineYellow => OutlinedButton.styleFrom(
        backgroundColor: appTheme.gray90001,
        side: BorderSide(
          color: appTheme.yellow90001,
          width: 1,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.h),
        ),
      );
  // text button style
  static ButtonStyle get none => ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
        elevation: MaterialStateProperty.all<double>(0),
      );
}
