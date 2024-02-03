import 'package:flutter/material.dart';
import 'package:pratinav_s_application9/core/app_export.dart';
import 'package:pratinav_s_application9/widgets/custom_elevated_button.dart';

// ignore: must_be_immutable
class AppbarTrailingButtonOne extends StatelessWidget {
  AppbarTrailingButtonOne({
    Key? key,
    this.margin,
    this.onTap,
  }) : super(
          key: key,
        );

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap!.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: CustomElevatedButton(
          height: 30.v,
          width: 70.h,
          text: "lbl_10_of_14".tr.toUpperCase(),
          buttonStyle: CustomButtonStyles.fillGray,
          buttonTextStyle: theme.textTheme.labelLarge!,
        ),
      ),
    );
  }
}
