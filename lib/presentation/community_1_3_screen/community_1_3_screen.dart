import 'package:cybitect0/core/app_export.dart';
import 'package:cybitect0/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class Community13Screen extends StatelessWidget {
  Community13Screen({Key? key})
      : super(
          key: key,
        );

  TextEditingController selamatpagitemenController = TextEditingController();

  TextEditingController ketikpesanController = TextEditingController();

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
              vertical: 52.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 1.h),
                  child: Row(
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
                ),
                SizedBox(height: 27.v),
                Padding(
                  padding: EdgeInsets.only(left: 1.h),
                  child: Text(
                    "@ronweasley02",
                    style: theme.textTheme.titleMedium,
                  ),
                ),
                SizedBox(height: 2.v),
                Padding(
                  padding: EdgeInsets.only(left: 1.h),
                  child: CustomTextFormField(
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
                ),
                SizedBox(height: 22.v),
                Padding(
                  padding: EdgeInsets.only(left: 1.h),
                  child: Text(
                    "@sukakebab",
                    style: theme.textTheme.titleMedium,
                  ),
                ),
                SizedBox(height: 2.v),
                Padding(
                  padding: EdgeInsets.only(left: 1.h),
                  child: _buildFive(
                    context,
                    messageText: "Pagi juga ron",
                    messageTime: "09.16",
                  ),
                ),
                SizedBox(height: 22.v),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "@evelynxr",
                    style: theme.textTheme.titleMedium,
                  ),
                ),
                SizedBox(height: 2.v),
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
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            left: 3.h,
                            top: 3.v,
                            bottom: 3.v,
                          ),
                          child: Text(
                            "Pagi jg",
                            style: theme.textTheme.bodyLarge,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 44.h,
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
                SizedBox(height: 22.v),
                Padding(
                  padding: EdgeInsets.only(left: 1.h),
                  child: Text(
                    "@indomilkita",
                    style: theme.textTheme.titleMedium,
                  ),
                ),
                SizedBox(height: 2.v),
                Padding(
                  padding: EdgeInsets.only(left: 1.h),
                  child: _buildFive(
                    context,
                    messageText:
                        "ada yg udh nyoba konsul ga? Saran dokter dong :)",
                    messageTime: "09.20",
                  ),
                ),
                SizedBox(height: 26.v),
                Padding(
                  padding: EdgeInsets.only(left: 1.h),
                  child: Text(
                    "@jungjung92",
                    style: theme.textTheme.titleMedium,
                  ),
                ),
                SizedBox(height: 4.v),
                Padding(
                  padding: EdgeInsets.only(left: 1.h),
                  child: _buildFive(
                    context,
                    messageText:
                        "Aku udahh, maren sama dokter Hermione. Baik banget trus to the point gituu",
                    messageTime: "09.22",
                  ),
                ),
                SizedBox(height: 14.v),
                Padding(
                  padding: EdgeInsets.only(left: 1.h),
                  child: _buildFive(
                    context,
                    messageText:
                        "Aku masih ada sisa 2 kali sesi lg sama beliau hehe",
                    messageTime: "09.23",
                  ),
                ),
                SizedBox(height: 22.v),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "@evelynxr",
                    style: theme.textTheme.titleMedium,
                  ),
                ),
                SizedBox(height: 2.v),
                _buildFive(
                  context,
                  messageText:
                      "Sama dokter wanda juga bagus. Fast respon dokternya kalau lg online",
                  messageTime: "09.24",
                ),
                SizedBox(height: 5.v),
              ],
            ),
          ),
        ),
        bottomNavigationBar: _buildKetikpesan(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildKetikpesan(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 25.h,
        right: 25.h,
        bottom: 38.v,
      ),
      child: CustomTextFormField(
        controller: ketikpesanController,
        hintText: "Ketik pesan",
        textInputAction: TextInputAction.done,
        borderDecoration: TextFormFieldStyleHelper.fillWhiteA,
        fillColor: appTheme.whiteA700,
      ),
    );
  }

  /// Common widget
  Widget _buildFive(
    BuildContext context, {
    required String messageText,
    required String messageTime,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 9.h,
        vertical: 4.v,
      ),
      decoration: AppDecoration.outlinePrimary4.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 171.h,
            margin: EdgeInsets.symmetric(vertical: 1.v),
            child: Text(
              messageText,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.bodyLarge!.copyWith(
                color: appTheme.gray80003,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 24.h,
              top: 31.v,
              right: 4.h,
            ),
            child: Text(
              messageTime,
              style: theme.textTheme.bodySmall!.copyWith(
                color: appTheme.gray80003,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
