import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeGray400 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray400,
      );
  static get bodyLargeGray500 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray500,
      );
  static get bodyLargeGray50001 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray50001,
      );
  static get bodyLargeGray800 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray800,
        fontWeight: FontWeight.w400,
      );
  static get bodyLargeLightgreen600 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.lightGreen600,
        fontWeight: FontWeight.w400,
      );
  static get bodyLargeRegular => theme.textTheme.bodyLarge!.copyWith(
        fontWeight: FontWeight.w400,
      );
  static get bodyLargeYellow200 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.yellow200,
        fontWeight: FontWeight.w400,
      );
  static get bodyLargeff404929 => theme.textTheme.bodyLarge!.copyWith(
        color: Color(0XFF404929),
      );
  static get bodySmall12 => theme.textTheme.bodySmall!.copyWith(
        fontSize: 12.fSize,
      );
  static get bodySmallGray80003 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray80003.withOpacity(0.34),
        fontSize: 12.fSize,
      );
  static get bodySmallYellow200 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.yellow200,
        fontSize: 12.fSize,
      );
  // Headline text style
  static get headlineSmallRegular => theme.textTheme.headlineSmall!.copyWith(
        fontWeight: FontWeight.w400,
      );
  static get headlineSmallYellow200 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.yellow200,
        fontWeight: FontWeight.w400,
      );
  // Label text style
  static get labelLargeYellow20001 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.yellow20001,
      );
  // Title text style
  static get titleLargeSemiBold => theme.textTheme.titleLarge!.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get titleLargeYellow20001 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.yellow20001,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumGray800 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray800,
      );
  static get titleMediumMedium => theme.textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get titleMediumYellow20001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.yellow20001,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumff404929 => theme.textTheme.titleMedium!.copyWith(
        color: Color(0XFF404929),
        fontWeight: FontWeight.w500,
      );
  static get titleMediumff404929_1 => theme.textTheme.titleMedium!.copyWith(
        color: Color(0XFF404929),
      );
}

extension on TextStyle {
  TextStyle get josefinSans {
    return copyWith(
      fontFamily: 'Josefin Sans',
    );
  }
}
