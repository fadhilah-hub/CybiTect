import 'package:cybitect0/core/app_export.dart';
import 'package:cybitect0/presentation/dashboard_hasil_2_page/dashboard_hasil_2_page.dart';
import 'package:cybitect0/widgets/custom_bottom_bar.dart';
import 'package:cybitect0/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class CommunityZeroScreen extends StatelessWidget {
  CommunityZeroScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
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
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Community",
                    style: theme.textTheme.titleLarge,
                  ),
                ),
                SizedBox(height: 55.v),
                Padding(
                  padding: EdgeInsets.only(left: 2.h),
                  child: Text(
                    "Hi, Evelyn",
                    style: theme.textTheme.headlineSmall,
                  ),
                ),
                SizedBox(height: 18.v),
                Container(
                  width: 337.h,
                  margin: EdgeInsets.only(
                    left: 1.h,
                    right: 43.h,
                  ),
                  child: Text(
                    "Mulai percakapan dengan komunitas untuk saling berbagi dan memberi informasi.",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.bodyLarge,
                  ),
                ),
                SizedBox(height: 20.v),
                CustomElevatedButton(
                  height: 43.v,
                  text: "Bergabung",
                  buttonTextStyle: CustomTextStyles.titleLargeSemiBold,
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
