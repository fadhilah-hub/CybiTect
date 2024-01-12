import 'package:cybitect0/core/app_export.dart';
import 'package:cybitect0/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class MydocChatHgThreeScreen extends StatelessWidget {
  MydocChatHgThreeScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController messageSectionController = TextEditingController();

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
              horizontal: 24.h,
              vertical: 36.v,
            ),
            child: Column(
              children: [
                _buildArrowDownSection(context),
                SizedBox(height: 31.v),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 8.h,
                      vertical: 5.v,
                    ),
                    decoration: AppDecoration.outlinePrimary2.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder16,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            left: 2.h,
                            top: 2.v,
                            bottom: 3.v,
                          ),
                          child: Text(
                            "Selamat pagi, dokter",
                            style: theme.textTheme.bodyLarge,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 17.h,
                            top: 14.v,
                          ),
                          child: Text(
                            "09.16",
                            style: theme.textTheme.bodySmall,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 5.v),
              ],
            ),
          ),
        ),
        bottomNavigationBar: _buildMessageSection(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildArrowDownSection(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 1.h),
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
  Widget _buildMessageSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 25.h,
        right: 25.h,
        bottom: 38.v,
      ),
      child: CustomTextFormField(
        controller: messageSectionController,
        hintText: "Ketik pesan",
        textInputAction: TextInputAction.done,
        borderDecoration: TextFormFieldStyleHelper.fillWhiteA,
        fillColor: appTheme.whiteA700,
      ),
    );
  }
}
