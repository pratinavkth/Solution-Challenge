import 'package:flutter/material.dart';
import 'package:pratinav_s_application9/core/app_export.dart';

class CustomIconButton extends StatelessWidget {
  CustomIconButton({
    Key? key,
    this.alignment,
    this.height,
    this.width,
    this.padding,
    this.decoration,
    this.child,
    this.onTap,
  }) : super(
          key: key,
        );

  final Alignment? alignment;

  final double? height;

  final double? width;

  final EdgeInsetsGeometry? padding;

  final BoxDecoration? decoration;

  final Widget? child;

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: iconButtonWidget,
          )
        : iconButtonWidget;
  }

  Widget get iconButtonWidget => SizedBox(
        height: height ?? 0,
        width: width ?? 0,
        child: IconButton(
          padding: EdgeInsets.zero,
          icon: Container(
            height: height ?? 0,
            width: width ?? 0,
            padding: padding ?? EdgeInsets.zero,
            decoration: decoration ??
                BoxDecoration(
                  borderRadius: BorderRadius.circular(24.h),
                  border: Border.all(
                    color: appTheme.whiteA70001,
                    width: 1.h,
                  ),
                ),
            child: child,
          ),
          onPressed: onTap,
        ),
      );
}

/// Extension on [CustomIconButton] to facilitate inclusion of all types of border style etc
extension IconButtonStyleHelper on CustomIconButton {
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray80003,
        borderRadius: BorderRadius.circular(40.h),
      );
  static BoxDecoration get outlinePrimary => BoxDecoration(
        borderRadius: BorderRadius.circular(28.h),
        border: Border.all(
          color: theme.colorScheme.primary,
          width: 1.h,
        ),
      );
  static BoxDecoration get fillGrayTL20 => BoxDecoration(
        color: appTheme.gray10002,
        borderRadius: BorderRadius.circular(20.h),
      );
  static BoxDecoration get outlineGray => BoxDecoration(
        borderRadius: BorderRadius.circular(20.h),
        border: Border.all(
          color: appTheme.gray300,
          width: 1.h,
        ),
      );
  static BoxDecoration get fillLightGreen => BoxDecoration(
        color: appTheme.lightGreen40001,
        borderRadius: BorderRadius.circular(20.h),
      );
  static BoxDecoration get fillDeepOrange => BoxDecoration(
        color: appTheme.deepOrange400,
        borderRadius: BorderRadius.circular(20.h),
      );
  static BoxDecoration get fillGreen => BoxDecoration(
        color: appTheme.green500,
        borderRadius: BorderRadius.circular(32.h),
      );
  static BoxDecoration get fillWhiteA => BoxDecoration(
        color: appTheme.whiteA70001,
        borderRadius: BorderRadius.circular(34.h),
      );
  static BoxDecoration get outlineRed => BoxDecoration(
        color: appTheme.gray90002,
        borderRadius: BorderRadius.circular(24.h),
        border: Border.all(
          color: appTheme.red50,
          width: 1.h,
        ),
      );
  static BoxDecoration get fillGrayTL24 => BoxDecoration(
        color: appTheme.gray80003,
        borderRadius: BorderRadius.circular(24.h),
      );
  static BoxDecoration get fillLightGreenTL24 => BoxDecoration(
        color: appTheme.lightGreen300,
        borderRadius: BorderRadius.circular(24.h),
      );
  static BoxDecoration get outlineDeepOrangeF => BoxDecoration(
        color: appTheme.yellow90001,
        borderRadius: BorderRadius.circular(32.h),
        boxShadow: [
          BoxShadow(
            color: appTheme.deepOrange4003f,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              0,
            ),
          ),
        ],
      );
}
