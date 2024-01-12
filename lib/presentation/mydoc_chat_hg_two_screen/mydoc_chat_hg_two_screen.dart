import 'package:cybitect0/core/app_export.dart';
import 'package:cybitect0/widgets/custom_icon_button.dart';
import 'package:cybitect0/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class MydocChatHgTwoScreen extends StatelessWidget {
  MydocChatHgTwoScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController greetingController = TextEditingController();

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
              vertical: 36.v,
            ),
            child: Column(
              children: [
                _buildArrowDownSection(context),
                Spacer(
                  flex: 46,
                ),
                Text(
                  "Ketik pesan untuk memulai sesi konsultasi",
                  style: CustomTextStyles.bodyLargeGray500,
                ),
                Spacer(
                  flex: 53,
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: _buildGreetingSection(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildArrowDownSection(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 7.h,
        vertical: 15.v,
      ),
      decoration: AppDecoration.fillGreen200.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder24,
      ),
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgArrowDown,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(
              top: 4.v,
              bottom: 3.v,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 54.h),
            child: Column(
              children: [
                Text(
                  "dr. Hermione Granger, Sp.KJ",
                  style: theme.textTheme.titleMedium,
                ),
                SizedBox(height: 3.v),
                Text(
                  "Online",
                  style: CustomTextStyles.bodySmall12,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildGreetingSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 25.h,
        right: 25.h,
        bottom: 38.v,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: CustomTextFormField(
              controller: greetingController,
              hintText: "Selamat pagi, dokter",
              hintStyle: theme.textTheme.bodyLarge!,
              textInputAction: TextInputAction.done,
              borderDecoration: TextFormFieldStyleHelper.fillWhiteA,
              fillColor: appTheme.whiteA700,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 2.h),
            child: CustomIconButton(
              height: 44.adaptSize,
              width: 44.adaptSize,
              padding: EdgeInsets.all(7.h),
              decoration: IconButtonStyleHelper.fillGrayTL22,
              child: CustomImageView(
                imagePath: ImageConstant.imgTelevision,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
