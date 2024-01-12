import 'package:cybitect0/core/app_export.dart';
import 'package:cybitect0/presentation/dashboard_hasil_2_page/dashboard_hasil_2_page.dart';
import 'package:cybitect0/widgets/custom_bottom_bar.dart';
import 'package:cybitect0/widgets/custom_switch.dart';
import 'package:cybitect0/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class DashboardHasilScreen extends StatelessWidget {
  DashboardHasilScreen({Key? key})
      : super(
          key: key,
        );

  bool isSelectedSwitch = false;

  TextEditingController eightyThreeController = TextEditingController();

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
              vertical: 49.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                Text(
                  "Hi, Evelyn",
                  style: theme.textTheme.headlineSmall,
                ),
                SizedBox(height: 34.v),
                _buildMonitoringFeature(context),
                SizedBox(height: 32.v),
                CustomTextFormField(
                  controller: eightyThreeController,
                  hintText: "4 tindakan cyberbullying terdeteksi!",
                  textInputAction: TextInputAction.done,
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 11.h,
                    vertical: 14.v,
                  ),
                  borderDecoration: TextFormFieldStyleHelper.outlinePrimaryTL16,
                  fillColor: appTheme.pink100,
                ),
                SizedBox(height: 13.v),
                Padding(
                  padding: EdgeInsets.only(left: 11.h),
                  child: Row(
                    children: [
                      Text(
                        "Lihat hasil",
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
  Widget _buildMonitoringFeature(BuildContext context) {
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
