import '../dashboard_hasil_2_page/widgets/componentlist_item_widget.dart';
import 'package:cybitect0/core/app_export.dart';
import 'package:cybitect0/widgets/custom_switch.dart';
import 'package:cybitect0/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class DashboardHasil2Page extends StatelessWidget {
  DashboardHasil2Page({Key? key})
      : super(
          key: key,
        );

  bool isSelectedSwitch = false;

  TextEditingController eightyEightController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.transparent,
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
            decoration: AppDecoration.gradientGrayToGray300,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 25.h,
                vertical: 49.v,
              ),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerRight,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            top: 1.v,
                            bottom: 2.v,
                          ),
                          child: Text(
                            "Dashboard",
                            style: theme.textTheme.titleLarge,
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgSearch,
                          height: 24.adaptSize,
                          width: 24.adaptSize,
                          margin: EdgeInsets.only(left: 113.h),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 55.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Hi, Evelyn",
                      style: theme.textTheme.headlineSmall,
                    ),
                  ),
                  SizedBox(height: 34.v),
                  _buildEightyNineRow(context),
                  SizedBox(height: 32.v),
                  CustomTextFormField(
                    controller: eightyEightController,
                    hintText: "4 tindakan cyberbullying terdeteksi!",
                    textInputAction: TextInputAction.done,
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 11.h,
                      vertical: 14.v,
                    ),
                    borderDecoration:
                        TextFormFieldStyleHelper.outlinePrimaryTL16,
                    fillColor: appTheme.pink100,
                  ),
                  SizedBox(height: 13.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 11.h),
                      child: Row(
                        children: [
                          Text(
                            "Sembunyikan hasil",
                            style: CustomTextStyles.bodyLargeGray800.copyWith(
                              decoration: TextDecoration.underline,
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgChangeHistory,
                            height: 16.adaptSize,
                            width: 16.adaptSize,
                            margin: EdgeInsets.only(left: 3.h),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 28.v),
                  _buildComponentList(context),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildEightyNineRow(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 9.h,
        vertical: 5.v,
      ),
      decoration: AppDecoration.outlinePrimary2.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(
            child: Container(
              width: 314.h,
              margin: EdgeInsets.only(top: 5.v),
              child: Text(
                "Fitur monitoring sedang aktif. Pendeteksian sedang dilakukan.",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: CustomTextStyles.bodyLargeRegular,
              ),
            ),
          ),
          CustomSwitch(
            margin: EdgeInsets.only(
              left: 17.h,
              top: 9.v,
              bottom: 6.v,
            ),
            value: isSelectedSwitch,
            onChange: (value) {
              isSelectedSwitch = value;
            },
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildComponentList(BuildContext context) {
    return ListView.separated(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      separatorBuilder: (
        context,
        index,
      ) {
        return SizedBox(
          height: 14.v,
        );
      },
      itemCount: 4,
      itemBuilder: (context, index) {
        return ComponentlistItemWidget();
      },
    );
  }
}
