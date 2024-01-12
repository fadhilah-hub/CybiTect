import 'package:cybitect0/core/app_export.dart';
import 'package:cybitect0/widgets/custom_elevated_button.dart';
import 'package:cybitect0/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  SignInScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController userNameController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        resizeToAvoidBottomInset: false,
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
                CustomImageView(
                  imagePath: ImageConstant.imgAssetsLpLkmmtd,
                  height: 302.v,
                  width: 430.h,
                  alignment: Alignment.topCenter,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgAssetsLpLkmmtd1,
                  height: 498.v,
                  width: 430.h,
                  alignment: Alignment.bottomCenter,
                  margin: EdgeInsets.only(bottom: 5.v),
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 25.h,
                      vertical: 45.v,
                    ),
                    decoration: AppDecoration.gradientGrayToYellow.copyWith(
                      borderRadius: BorderRadiusStyle.customBorderBL64,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "Sign In",
                          style: CustomTextStyles.headlineSmallRegular,
                        ),
                        SizedBox(height: 31.v),
                        _buildSignInForm(context),
                        SizedBox(height: 81.v),
                        CustomElevatedButton(
                          text: "SIGN IN",
                          margin: EdgeInsets.only(
                            left: 17.h,
                            right: 18.h,
                          ),
                          buttonStyle:
                              CustomButtonStyles.fillSecondaryContainer,
                        ),
                        SizedBox(height: 9.v),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(bottom: 1.v),
                              child: Text(
                                "Don’t have an account?",
                                style: theme.textTheme.bodyLarge,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 2.h),
                              child: Text(
                                "Sign Up",
                                style: theme.textTheme.titleMedium!.copyWith(
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 73.v),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSignInForm(BuildContext context) {
    return SizedBox(
      height: 308.v,
      width: 380.h,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 17.h,
                vertical: 19.v,
              ),
              decoration: AppDecoration.outlinePrimary1.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder24,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 45.v),
                  Text(
                    "Username",
                    style: CustomTextStyles.bodyLargeRegular,
                  ),
                  SizedBox(height: 9.v),
                  SizedBox(
                    height: 44.v,
                    width: 345.h,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 14.h),
                            child: Text(
                              "@evelynxr",
                              style: theme.textTheme.bodyLarge,
                            ),
                          ),
                        ),
                        CustomTextFormField(
                          width: 345.h,
                          controller: userNameController,
                          alignment: Alignment.center,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 6.v),
                  Padding(
                    padding: EdgeInsets.only(left: 2.h),
                    child: Text(
                      "Password",
                      style: CustomTextStyles.bodyLargeRegular,
                    ),
                  ),
                  SizedBox(height: 9.v),
                  SizedBox(
                    height: 44.v,
                    width: 345.h,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgEyeGray80003,
                          height: 24.adaptSize,
                          width: 24.adaptSize,
                          alignment: Alignment.centerRight,
                          margin: EdgeInsets.only(right: 17.h),
                        ),
                        CustomTextFormField(
                          width: 345.h,
                          controller: passwordController,
                          textInputAction: TextInputAction.done,
                          alignment: Alignment.center,
                          obscureText: true,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 5.v),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.only(right: 2.h),
                      child: Text(
                        "Forgot password?",
                        style: CustomTextStyles.bodySmall12.copyWith(
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: 120.adaptSize,
              width: 120.adaptSize,
              padding: EdgeInsets.all(20.h),
              decoration: AppDecoration.fillGray70001.copyWith(
                borderRadius: BorderRadiusStyle.circleBorder60,
              ),
              child: CustomImageView(
                imagePath: ImageConstant.imgSettings,
                height: 80.adaptSize,
                width: 80.adaptSize,
                alignment: Alignment.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
