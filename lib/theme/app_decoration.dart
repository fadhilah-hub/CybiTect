import 'package:flutter/material.dart';
import 'package:cybitect0/core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray70003,
      );
  static BoxDecoration get fillGray70001 => BoxDecoration(
        color: appTheme.gray70001,
      );
  static BoxDecoration get fillGreen => BoxDecoration(
        color: appTheme.green100,
      );
  static BoxDecoration get fillGreen200 => BoxDecoration(
        color: appTheme.green200,
      );
  static BoxDecoration get fillWhiteA => BoxDecoration(
        color: appTheme.whiteA700,
      );

  // Gradient decorations
  static BoxDecoration get gradientGray50002ToOnPrimaryContainer =>
      BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 1),
          end: Alignment(0.5, 0),
          colors: [
            appTheme.gray50002,
            appTheme.gray300,
            theme.colorScheme.onPrimaryContainer,
          ],
        ),
      );
  static BoxDecoration get gradientGrayToGray => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(1.1, -0.17),
          end: Alignment(-0.18, 1.2),
          colors: [
            appTheme.gray80002,
            appTheme.gray40001,
          ],
        ),
      );
  static BoxDecoration get gradientGrayToGray300 => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(1.14, 1.13),
          end: Alignment(-0.07, -0.08),
          colors: [
            appTheme.gray50002,
            appTheme.lightGreen50,
            appTheme.gray300,
          ],
        ),
      );
  static BoxDecoration get gradientGrayToOnPrimaryContainer => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, -0.03),
          end: Alignment(0.5, 1.06),
          colors: [
            appTheme.gray50002,
            appTheme.gray300,
            theme.colorScheme.onPrimaryContainer,
          ],
        ),
      );
  static BoxDecoration get gradientGrayToYellow => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(-0.42, 1.41),
          end: Alignment(1.07, 0),
          colors: [
            appTheme.gray80002,
            appTheme.yellow100,
          ],
        ),
      );

  // Outline decorations
  static BoxDecoration get outlinePrimary => BoxDecoration(
        color: appTheme.gray50002.withOpacity(0.64),
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.primary,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              8,
            ),
          ),
        ],
      );
  static BoxDecoration get outlinePrimary1 => BoxDecoration(
        color: appTheme.whiteA700.withOpacity(0.32),
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.primary,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              8,
            ),
          ),
        ],
      );
  static BoxDecoration get outlinePrimary2 => BoxDecoration(
        color: appTheme.orange100,
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.primary,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlinePrimary3 => BoxDecoration(
        color: appTheme.whiteA700.withOpacity(0.61),
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.primary,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlinePrimary4 => BoxDecoration(
        color: appTheme.whiteA700,
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.primary,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder60 => BorderRadius.circular(
        60.h,
      );

  // Custom borders
  static BorderRadius get customBorderBL64 => BorderRadius.vertical(
        bottom: Radius.circular(64.h),
      );
  static BorderRadius get customBorderTL64 => BorderRadius.vertical(
        top: Radius.circular(64.h),
      );

  // Rounded borders
  static BorderRadius get roundedBorder16 => BorderRadius.circular(
        16.h,
      );
  static BorderRadius get roundedBorder24 => BorderRadius.circular(
        24.h,
      );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
