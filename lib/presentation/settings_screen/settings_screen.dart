import 'package:cybitect0/core/app_export.dart';
import 'package:cybitect0/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  SettingsScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController userNameController = TextEditingController();

  TextEditingController editTextController = TextEditingController();

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
              begin: Alignment(1.14, 1.13),
              end: Alignment(-0.07, -0.08),
              colors: [
                appTheme.gray50002,
                appTheme.lightGreen50,
                appTheme.gray300,
              ],
            ),
          ),
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 25.h,
              vertical: 52.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgArrowDown,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 110.h,
                        bottom: 4.v,
                      ),
                      child: Text(
                        "Pengaturan",
                        style: theme.textTheme.titleLarge,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 48.v),
                _buildFourteenSection(context),
                SizedBox(height: 32.v),
                _buildTenSection(context),
                SizedBox(height: 5.v),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFourteenSection(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 17.h,
        vertical: 28.v,
      ),
      decoration: AppDecoration.outlinePrimary1.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder24,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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
          SizedBox(height: 7.v),
          Padding(
            padding: EdgeInsets.only(left: 2.h),
            child: Text(
              "Tentang",
              style: CustomTextStyles.bodyLargeRegular,
            ),
          ),
          SizedBox(height: 8.v),
          SizedBox(
            height: 44.v,
            width: 345.h,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 15.h),
                    child: Text(
                      "Tambahkan sesuatu tentang diri anda",
                      style: CustomTextStyles.bodyLargeGray50001,
                    ),
                  ),
                ),
                CustomTextFormField(
                  width: 345.h,
                  controller: editTextController,
                  textInputAction: TextInputAction.done,
                  alignment: Alignment.center,
                ),
              ],
            ),
          ),
          SizedBox(height: 8.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTenSection(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 17.h,
        vertical: 15.v,
      ),
      decoration: AppDecoration.outlinePrimary2.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 1.v,
              bottom: 7.v,
            ),
            child: Text(
              "Keluar",
              style: theme.textTheme.titleMedium,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgArrowLeft,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(right: 1.h),
          ),
        ],
      ),
    );
  }
}
