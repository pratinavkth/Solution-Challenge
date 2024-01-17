import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Display text style
  static get displayLargeWhiteA70001 => theme.textTheme.displayLarge!.copyWith(
        color: appTheme.whiteA70001,
        fontSize: 64.fSize,
      );
  static get displaySmallOnPrimary => theme.textTheme.displaySmall!.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static get displaySmallWhiteA70001 => theme.textTheme.displaySmall!.copyWith(
        color: appTheme.whiteA70001,
        fontWeight: FontWeight.w800,
      );
  static get displaySmallWhiteA70001_1 =>
      theme.textTheme.displaySmall!.copyWith(
        color: appTheme.whiteA70001,
      );
  // Headline text style
  static get headlineLargeBold => theme.textTheme.headlineLarge!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get headlineLargeBold32 => theme.textTheme.headlineLarge!.copyWith(
        fontSize: 32.fSize,
        fontWeight: FontWeight.w700,
      );
  static get headlineLargeGray800 => theme.textTheme.headlineLarge!.copyWith(
        color: appTheme.gray800,
      );
  static get headlineLargeGray80003 => theme.textTheme.headlineLarge!.copyWith(
        color: appTheme.gray80003,
        fontWeight: FontWeight.w600,
      );
  static get headlineLargeGray90002 => theme.textTheme.headlineLarge!.copyWith(
        color: appTheme.gray90002,
        fontSize: 32.fSize,
      );
  static get headlineLargeff4e3321 => theme.textTheme.headlineLarge!.copyWith(
        color: Color(0XFF4E3321),
        fontWeight: FontWeight.w600,
      );
  static get headlineLargeff736a66 => theme.textTheme.headlineLarge!.copyWith(
        color: Color(0XFF736A66),
      );
  static get headlineLargeff926247 => theme.textTheme.headlineLarge!.copyWith(
        color: Color(0XFF926247),
      );
  static get headlineLargeff9bb067 => theme.textTheme.headlineLarge!.copyWith(
        color: Color(0XFF9BB067),
      );
  static get headlineLargeffa694f5 => theme.textTheme.headlineLarge!.copyWith(
        color: Color(0XFFA694F5),
      );
  static get headlineLargeffbfa090 => theme.textTheme.headlineLarge!.copyWith(
        color: Color(0XFFBFA090),
        fontWeight: FontWeight.w700,
      );
  static get headlineLargeffffffff => theme.textTheme.headlineLarge!.copyWith(
        color: Color(0XFFFFFFFF),
      );
  static get headlineLargeffffffffBold =>
      theme.textTheme.headlineLarge!.copyWith(
        color: Color(0XFFFFFFFF),
        fontWeight: FontWeight.w700,
      );
  static get headlineLargeffffffffSemiBold =>
      theme.textTheme.headlineLarge!.copyWith(
        color: Color(0XFFFFFFFF),
        fontWeight: FontWeight.w600,
      );
  // Label text style
  static get labelLargeBlack900 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.black900,
      );
  static get labelLargeGray500 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray500,
      );
  static get labelLargeGray500_1 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray500,
      );
  static get labelLargeGray700 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray700,
      );
  static get labelLargePoppinsGray900 =>
      theme.textTheme.labelLarge!.poppins.copyWith(
        color: appTheme.gray900.withOpacity(0.6),
        fontWeight: FontWeight.w500,
      );
  static get labelLargePoppinsSecondaryContainer =>
      theme.textTheme.labelLarge!.poppins.copyWith(
        color: theme.colorScheme.secondaryContainer,
        fontWeight: FontWeight.w500,
      );
  static get labelLargeWhiteA70001 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.whiteA70001,
      );
  static get labelLargeWhiteA70001_1 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.whiteA70001,
      );
  static get labelLargeYellow90001 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.yellow90001,
      );
  // Title text style
  static get titleLargeGray500 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.gray500,
        fontWeight: FontWeight.w600,
      );
  static get titleLargeGray80001 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.gray80001,
      );
  static get titleMedium16 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 16.fSize,
      );
  static get titleMedium16_1 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 16.fSize,
      );
  static get titleMediumBlack900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumBold => theme.textTheme.titleMedium!.copyWith(
        fontSize: 16.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumBold_1 => theme.textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleMediumGray30002 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray30002,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumGray400 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray400,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumGray400Medium => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray400,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumGray500 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray500,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumGray600 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray600,
      );
  static get titleMediumGray700 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray700,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumLightgreen400 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.lightGreen400,
      );
  static get titleMediumMedium => theme.textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get titleMediumMedium16 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 16.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumOnPrimaryContainer =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontSize: 16.fSize,
      );
  static get titleMediumPrimaryContainer =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumSemiBold => theme.textTheme.titleMedium!.copyWith(
        fontSize: 16.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumSemiBold_1 => theme.textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get titleSmallBold => theme.textTheme.titleSmall!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleSmallGray10002 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray10002,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallGray30002 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray30002,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallGray400 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray400,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallGray80001 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray80001,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallGray900a3 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray900A3,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallLightgreen400 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.lightGreen400,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallSemiBold => theme.textTheme.titleSmall!.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get titleSmallYellow90001 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.yellow90001,
        fontWeight: FontWeight.w700,
      );
  static get titleSmall_1 => theme.textTheme.titleSmall!;
  static get titleSmallffc9c7c5 => theme.textTheme.titleSmall!.copyWith(
        color: Color(0XFFC9C7C5),
        fontWeight: FontWeight.w700,
      );
  static get titleSmallffe8dcd8 => theme.textTheme.titleSmall!.copyWith(
        color: Color(0XFFE8DCD8),
        fontWeight: FontWeight.w700,
      );
  static get titleSmallffec7d1c => theme.textTheme.titleSmall!.copyWith(
        color: Color(0XFFEC7D1C),
        fontWeight: FontWeight.w700,
      );
  // Urbanist text style
  static get urbanistWhiteA70001 => TextStyle(
        color: appTheme.whiteA70001,
        fontSize: 128.fSize,
        fontWeight: FontWeight.w800,
      ).urbanist;
  static get urbanistWhiteA70001ExtraBold => TextStyle(
        color: appTheme.whiteA70001,
        fontSize: 96.fSize,
        fontWeight: FontWeight.w800,
      ).urbanist;
  static get urbanistWhiteA70001ExtraBold180 => TextStyle(
        color: appTheme.whiteA70001,
        fontSize: 180.fSize,
        fontWeight: FontWeight.w800,
      ).urbanist;
}

extension on TextStyle {
  TextStyle get urbanist {
    return copyWith(
      fontFamily: 'Urbanist',
    );
  }

  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }
}
