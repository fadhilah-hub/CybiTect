import 'package:cybitect0/core/app_export.dart';
import 'package:cybitect0/widgets/custom_elevated_button.dart';
import 'package:cybitect0/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key})
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
              begin: Alignment(0.5, 1),
              end: Alignment(0.5, 0),
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
                _buildImageStack(context),
                CustomImageView(
                  imagePath: ImageConstant.imgAssetsLpLkmmtd1,
                  height: 498.v,
                  width: 430.h,
                  alignment: Alignment.bottomCenter,
                  margin: EdgeInsets.only(bottom: 21.v),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 25.h,
                      vertical: 49.v,
                    ),
                    decoration: AppDecoration.gradientGrayToGray.copyWith(
                      borderRadius: BorderRadiusStyle.customBorderTL64,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "Sign Up with Instagram",
                          style: CustomTextStyles.headlineSmallYellow200,
                        ),
                        SizedBox(height: 31.v),
                        _buildUserStack(context),
                        SizedBox(height: 45.v),
                        CustomElevatedButton(
                          text: "SIGN UP",
                          margin: EdgeInsets.only(
                            left: 17.h,
                            right: 18.h,
                          ),
                          buttonStyle: CustomButtonStyles.fillGrayTL16,
                        ),
                        SizedBox(height: 10.v),
                        SizedBox(
                          height: 16.v,
                          width: 231.h,
                          child: Stack(
                            alignment: Alignment.centerRight,
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Already have an account?",
                                  style: theme.textTheme.bodyLarge,
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Text(
                                  "Sign In",
                                  style: theme.textTheme.titleMedium!.copyWith(
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 78.v),
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
  Widget _buildImageStack(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: SizedBox(
        height: 302.v,
        width: double.maxFinite,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgAssetsLpLkmmtd302x430,
              height: 302.v,
              width: 430.h,
              alignment: Alignment.center,
            ),
            CustomImageView(
              imagePath: ImageConstant.imgAssetsLpLkmmtd185x221,
              height: 185.v,
              width: 221.h,
              alignment: Alignment.topCenter,
              margin: EdgeInsets.only(top: 14.v),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildUserStack(BuildContext context) {
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
              decoration: AppDecoration.outlinePrimary.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder24,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 45.v),
                  Text(
                    "Username",
                    style: CustomTextStyles.bodyLargeYellow200,
                  ),
                  SizedBox(height: 9.v),
                  CustomTextFormField(
                    controller: userNameController,
                  ),
                  SizedBox(height: 6.v),
                  Padding(
                    padding: EdgeInsets.only(left: 2.h),
                    child: Text(
                      "Password",
                      style: CustomTextStyles.bodyLargeYellow200,
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
                          imagePath: ImageConstant.imgEye,
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
                        style: CustomTextStyles.bodySmallYellow200.copyWith(
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
              decoration: AppDecoration.fillGray.copyWith(
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
