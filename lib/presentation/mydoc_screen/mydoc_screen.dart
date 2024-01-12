import 'package:cybitect0/core/app_export.dart';
import 'package:cybitect0/presentation/dashboard_hasil_2_page/dashboard_hasil_2_page.dart';
import 'package:cybitect0/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

class MydocScreen extends StatelessWidget {
  MydocScreen({Key? key})
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
              horizontal: 25.h,
              vertical: 52.v,
            ),
            child: Column(
              children: [
                Text(
                  "MyDoc",
                  style: theme.textTheme.titleLarge,
                ),
                SizedBox(height: 55.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Hi, Evelyn",
                    style: theme.textTheme.headlineSmall,
                  ),
                ),
                SizedBox(height: 18.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    width: 345.h,
                    margin: EdgeInsets.only(right: 34.h),
                    child: Text(
                      "Konsultasikan permasalahan yang anda alami dan rasakan dengan rekomendasi ahli psikologi terbaik.",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.bodyLarge,
                    ),
                  ),
                ),
                SizedBox(height: 20.v),
                _buildDoctorReviews(context),
                SizedBox(height: 25.v),
                _buildRecentOrders(context),
                SizedBox(height: 25.v),
                _buildUserProfile(context),
                SizedBox(height: 25.v),
                _buildClientTestimonials(context),
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
  Widget _buildDoctorReviews(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 12.h,
        vertical: 11.v,
      ),
      decoration: AppDecoration.outlinePrimary2.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 2.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "dr. Hermione Granger, Sp.KJ",
                  style: CustomTextStyles.bodyLargeRegular,
                ),
                SizedBox(height: 2.v),
                Padding(
                  padding: EdgeInsets.only(left: 2.h),
                  child: Text(
                    "Online",
                    style: CustomTextStyles.bodySmall12,
                  ),
                ),
              ],
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgChat,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(
              top: 4.v,
              right: 17.h,
              bottom: 2.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRecentOrders(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 12.h,
        vertical: 11.v,
      ),
      decoration: AppDecoration.outlinePrimary2.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 2.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "dr. Wanda, Sp.KJ",
                  style: CustomTextStyles.bodyLargeRegular,
                ),
                SizedBox(height: 2.v),
                Padding(
                  padding: EdgeInsets.only(left: 2.h),
                  child: Text(
                    "Online",
                    style: CustomTextStyles.bodySmall12,
                  ),
                ),
              ],
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgChat,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(
              top: 4.v,
              right: 17.h,
              bottom: 2.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfile(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 12.h,
        vertical: 11.v,
      ),
      decoration: AppDecoration.outlinePrimary2.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 2.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "dr. Strange, Sp.KJ",
                  style: CustomTextStyles.bodyLargeRegular,
                ),
                SizedBox(height: 2.v),
                Text(
                  "Offline",
                  style: CustomTextStyles.bodySmallGray80003,
                ),
              ],
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgChat,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(
              top: 4.v,
              right: 17.h,
              bottom: 2.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildClientTestimonials(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 12.h,
        vertical: 10.v,
      ),
      decoration: AppDecoration.outlinePrimary2.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 2.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Sherlock Holmes, M.Psi",
                  style: CustomTextStyles.bodyLargeRegular,
                ),
                SizedBox(height: 2.v),
                Text(
                  "Offline",
                  style: CustomTextStyles.bodySmallGray80003,
                ),
              ],
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgChat,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(
              top: 5.v,
              right: 17.h,
              bottom: 2.v,
            ),
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
