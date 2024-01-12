import 'package:cybitect0/core/app_export.dart';
import 'package:flutter/material.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: 375.h,
          child: Column(
            children: [
              _buildAppNavigation(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          context,
                          screenTitle: "First Page",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.firstPageScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Sign Up ",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.signUpScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Sign In ",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.signInScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Settings",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.settingsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Dashboard",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.dashboardScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Say no ",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.sayNoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Dashboard (hasil)",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.dashboardHasilScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Dashboard (hasil (2)) - Container",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.dashboardHasil2ContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Mental Heal",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.mentalHealScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Depresi",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.depresiScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Depresi One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.depresiOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "MyDoc (chat) HG Three",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.mydocChatHgThreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "MyDoc",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.mydocScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "MyDoc (chat) HG One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.mydocChatHgOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "MyDoc (chat) HG Two",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.mydocChatHgTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Community Zero",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.communityZeroScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Community 0.1",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.community01Screen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Community 0.2",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.community02Screen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Community 0.4",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.community04Screen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Community 1.3",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.community13Screen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(
    BuildContext context,
    String routeName,
  ) {
    Navigator.pushNamed(context, routeName);
  }
}
