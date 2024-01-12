import 'package:cybitect0/core/app_export.dart';
import 'package:cybitect0/widgets/custom_icon_button.dart';
import 'package:cybitect0/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class Community04Screen extends StatelessWidget {
  Community04Screen({Key? key})
      : super(
          key: key,
        );

  TextEditingController selamatpagitemenController = TextEditingController();

  TextEditingController pagijgvalueController = TextEditingController();

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
                SizedBox(height: 27.v),
                Text(
                  "@ronweasley02",
                  style: theme.textTheme.titleMedium,
                ),
                SizedBox(height: 2.v),
                CustomTextFormField(
                  width: 238.h,
                  controller: selamatpagitemenController,
                  hintText: "Selamat pagi temen”",
                  hintStyle: theme.textTheme.bodyLarge!,
                  suffix: Padding(
                    padding: EdgeInsets.fromLTRB(30.h, 20.v, 13.h, 5.v),
                    child: Text(
                      "09.15",
                      style: TextStyle(
                        color: Color(0XFF404929),
                        fontSize: 8.fSize,
                        fontFamily: 'Josefin Sans',
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                  suffixConstraints: BoxConstraints(
                    maxHeight: 34.v,
                  ),
                  contentPadding: EdgeInsets.all(9.h),
                  borderDecoration:
                      TextFormFieldStyleHelper.outlinePrimaryTL161,
                  fillColor: appTheme.whiteA700,
                ),
                SizedBox(height: 22.v),
                Text(
                  "@sukakebab",
                  style: theme.textTheme.titleMedium,
                ),
                SizedBox(height: 2.v),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 9.h,
                    vertical: 5.v,
                  ),
                  decoration: AppDecoration.outlinePrimary4.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder16,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 3.v),
                        child: Text(
                          "Pagi juga ron",
                          style: theme.textTheme.bodyLarge,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 106.h,
                          top: 14.v,
                          right: 4.h,
                        ),
                        child: Text(
                          "09.16",
                          style: theme.textTheme.bodySmall,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 5.v),
              ],
            ),
          ),
        ),
        bottomNavigationBar: _buildPagijgvalue(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildPagijgvalue(BuildContext context) {
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
              controller: pagijgvalueController,
              hintText: "Pagi jg",
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
