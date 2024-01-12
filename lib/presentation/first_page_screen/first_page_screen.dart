import 'package:cybitect0/core/app_export.dart';
import 'package:cybitect0/widgets/custom_elevated_button.dart';
import 'package:cybitect0/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

class FirstPageScreen extends StatelessWidget {
  const FirstPageScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(0.5, -0.03),
              end: Alignment(0.5, 1.06),
              colors: [
                appTheme.gray50002,
                appTheme.gray300,
                theme.colorScheme.onPrimaryContainer,
              ],
            ),
          ),
          child: SizedBox(
            height: 887.v,
            width: double.maxFinite,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                _buildFortyFourStack(context),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: 498.v,
                    width: double.maxFinite,
                    margin: EdgeInsets.only(bottom: 5.v),
                    child: Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgAssetsLpLkmmtd498x430,
                          height: 498.v,
                          width: 430.h,
                          alignment: Alignment.center,
                        ),
                        Align(
                          alignment: Alignment.topCenter,
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: 63.h,
                              top: 144.v,
                              right: 63.h,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                CustomElevatedButton(
                                  height: 51.v,
                                  text: "SIGN UP",
                                  buttonStyle: CustomButtonStyles.fillGray,
                                  buttonTextStyle:
                                      CustomTextStyles.titleMediumYellow20001,
                                ),
                                SizedBox(height: 28.v),
                                OutlineGradientButton(
                                  padding: EdgeInsets.only(
                                    left: 2.h,
                                    top: 2.v,
                                    right: 2.h,
                                    bottom: 2.v,
                                  ),
                                  strokeWidth: 2.h,
                                  gradient: LinearGradient(
                                    begin: Alignment(0.5, 0),
                                    end: Alignment(0.5, 1),
                                    colors: [
                                      appTheme.gray80003,
                                      appTheme.yellow200,
                                    ],
                                  ),
                                  corners: Corners(
                                    topLeft: Radius.circular(16),
                                    topRight: Radius.circular(16),
                                    bottomLeft: Radius.circular(16),
                                    bottomRight: Radius.circular(16),
                                  ),
                                  child: CustomOutlinedButton(
                                    text: "SIGN IN",
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgAssetsLpLkmmtd328x429,
                  height: 328.v,
                  width: 429.h,
                  alignment: Alignment.topCenter,
                  margin: EdgeInsets.only(top: 180.v),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFortyFourStack(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: SizedBox(
        height: 302.v,
        width: double.maxFinite,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgAssetsLpLkmmtd,
              height: 302.v,
              width: 430.h,
              alignment: Alignment.center,
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: EdgeInsets.only(
                  left: 93.h,
                  top: 92.v,
                  right: 93.h,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "HELLO!",
                      style: theme.textTheme.displayLarge,
                    ),
                    SizedBox(height: 2.v),
                    Text(
                      "We Always with You",
                      style: CustomTextStyles.bodyLargeLightgreen600,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
