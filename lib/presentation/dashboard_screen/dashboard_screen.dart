import 'package:cybitect0/core/app_export.dart';
import 'package:cybitect0/presentation/dashboard_hasil_2_page/dashboard_hasil_2_page.dart';
import 'package:cybitect0/widgets/custom_bottom_bar.dart';
import 'package:cybitect0/widgets/custom_switch.dart';
import 'package:cybitect0/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  DashboardScreen({Key? key})
      : super(
          key: key,
        );

  bool isSelectedSwitch = false;

  TextEditingController messageController = TextEditingController();

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

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
              vertical: 48.v,
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
                          top: 2.v,
                          bottom: 1.v,
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
                SizedBox(height: 56.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Hi, Evelyn",
                    style: theme.textTheme.headlineSmall,
                  ),
                ),
                SizedBox(height: 34.v),
                _buildSeventyFour(context),
                SizedBox(height: 48.v),
                CustomTextFormField(
                  controller: messageController,
                  hintText: "Say no to cyberbullying",
                  hintStyle: CustomTextStyles.bodyLargeRegular,
                  textInputAction: TextInputAction.done,
                  suffix: Container(
                    margin: EdgeInsets.fromLTRB(30.h, 15.v, 13.h, 16.v),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgUser,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                    ),
                  ),
                  suffixConstraints: BoxConstraints(
                    maxHeight: 55.v,
                  ),
                  contentPadding: EdgeInsets.only(
                    left: 11.h,
                    top: 19.v,
                    bottom: 19.v,
                  ),
                  borderDecoration: TextFormFieldStyleHelper.outlinePrimary,
                  fillColor: appTheme.orange100,
                ),
                SizedBox(height: 5.v),
              ],
            ),
          ),
        ),
        bottomNavigationBar: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.h),
          child: _buildBottomBar(context),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSeventyFour(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 9.h,
        vertical: 8.v,
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
              width: 268.h,
              margin: EdgeInsets.only(top: 2.v),
              child: Text(
                "Aktifkan fitur monitoring untuk mulai mendeteksi.",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: CustomTextStyles.bodyLargeRegular,
              ),
            ),
          ),
          CustomSwitch(
            margin: EdgeInsets.only(
              left: 63.h,
              top: 6.v,
              bottom: 3.v,
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
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Settings24x24:
        return AppRoutes.dashboardHasil2Page;
      case BottomBarEnum.Settingsyellow2000124x24:
        return "/";
      case BottomBarEnum.Cardiology:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.dashboardHasil2Page:
        return DashboardHasil2Page();
      default:
        return DefaultWidget();
    }
  }
}
