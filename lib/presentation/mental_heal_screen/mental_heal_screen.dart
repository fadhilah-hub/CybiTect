import '../mental_heal_screen/widgets/mentalhealchipview_item_widget.dart';
import 'package:cybitect0/core/app_export.dart';
import 'package:cybitect0/presentation/dashboard_hasil_2_page/dashboard_hasil_2_page.dart';
import 'package:cybitect0/widgets/custom_bottom_bar.dart';
import 'package:cybitect0/widgets/custom_floating_button.dart';
import 'package:flutter/material.dart';

class MentalHealScreen extends StatelessWidget {
  MentalHealScreen({Key? key})
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
              vertical: 50.v,
            ),
            child: Column(
              children: [
                Text(
                  "Mental Heal",
                  style: theme.textTheme.titleLarge,
                ),
                SizedBox(height: 57.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 1.h),
                    child: Text(
                      "Evelyn",
                      style: theme.textTheme.headlineSmall,
                    ),
                  ),
                ),
                SizedBox(height: 18.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    width: 333.h,
                    margin: EdgeInsets.only(
                      left: 1.h,
                      right: 47.h,
                    ),
                    child: Text(
                      "Permasalahan apa yang sedang anda alami dan rasakan? Temukan solusinya di sini",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.bodyLarge,
                    ),
                  ),
                ),
                SizedBox(height: 19.v),
                _buildMentalHealChipView(context),
                SizedBox(height: 13.v),
                _buildMentalHealFiftyThree(context),
                SizedBox(height: 5.v),
              ],
            ),
          ),
        ),
        bottomNavigationBar: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.h),
          child: _buildBottomBar(context),
        ),
        floatingActionButton: CustomFloatingButton(
          height: 36,
          width: 36,
          backgroundColor: appTheme.yellow20001,
          child: CustomImageView(
            imagePath: ImageConstant.imgFavorite,
            height: 18.0.v,
            width: 18.0.h,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }

  /// Section Widget
  Widget _buildMentalHealChipView(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 1.h),
      child: ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            height: 25.v,
          );
        },
        itemCount: 5,
        itemBuilder: (context, index) {
          return MentalhealchipviewItemWidget();
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildMentalHealFiftyThree(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 1.h),
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 12.v,
      ),
      decoration: AppDecoration.outlinePrimary2.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 2.v),
            child: Text(
              "Temukan konselor terdekat",
              style: theme.textTheme.bodyLarge,
            ),
          ),
          Text(
            "Temukan",
            style: CustomTextStyles.titleMediumMedium.copyWith(
              decoration: TextDecoration.underline,
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
