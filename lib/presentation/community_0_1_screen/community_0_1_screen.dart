import 'package:cybitect0/core/app_export.dart';
import 'package:cybitect0/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class Community01Screen extends StatelessWidget {
  Community01Screen({Key? key})
      : super(
          key: key,
        );

  TextEditingController typeMessageController = TextEditingController();

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
                        left: 111.h,
                        bottom: 4.v,
                      ),
                      child: Text(
                        "Community",
                        style: theme.textTheme.titleLarge,
                      ),
                    ),
                  ],
                ),
                Spacer(
                  flex: 49,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Anda sudah tergabung ke komunitas",
                    style: CustomTextStyles.bodyLargeGray500,
                  ),
                ),
                Spacer(
                  flex: 50,
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: _buildTypeMessage(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildTypeMessage(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 25.h,
        right: 25.h,
        bottom: 38.v,
      ),
      child: CustomTextFormField(
        controller: typeMessageController,
        hintText: "Ketik pesan",
        textInputAction: TextInputAction.done,
        borderDecoration: TextFormFieldStyleHelper.fillWhiteA,
        fillColor: appTheme.whiteA700,
      ),
    );
  }
}
