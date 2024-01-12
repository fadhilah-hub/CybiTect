import 'package:flutter/material.dart';
import 'package:cybitect0/presentation/first_page_screen/first_page_screen.dart';
import 'package:cybitect0/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:cybitect0/presentation/sign_in_screen/sign_in_screen.dart';
import 'package:cybitect0/presentation/settings_screen/settings_screen.dart';
import 'package:cybitect0/presentation/dashboard_screen/dashboard_screen.dart';
import 'package:cybitect0/presentation/say_no_screen/say_no_screen.dart';
import 'package:cybitect0/presentation/dashboard_hasil_screen/dashboard_hasil_screen.dart';
import 'package:cybitect0/presentation/dashboard_hasil_2_container_screen/dashboard_hasil_2_container_screen.dart';
import 'package:cybitect0/presentation/mental_heal_screen/mental_heal_screen.dart';
import 'package:cybitect0/presentation/depresi_screen/depresi_screen.dart';
import 'package:cybitect0/presentation/depresi_one_screen/depresi_one_screen.dart';
import 'package:cybitect0/presentation/mydoc_chat_hg_three_screen/mydoc_chat_hg_three_screen.dart';
import 'package:cybitect0/presentation/mydoc_screen/mydoc_screen.dart';
import 'package:cybitect0/presentation/mydoc_chat_hg_one_screen/mydoc_chat_hg_one_screen.dart';
import 'package:cybitect0/presentation/mydoc_chat_hg_two_screen/mydoc_chat_hg_two_screen.dart';
import 'package:cybitect0/presentation/community_zero_screen/community_zero_screen.dart';
import 'package:cybitect0/presentation/community_0_1_screen/community_0_1_screen.dart';
import 'package:cybitect0/presentation/community_0_2_screen/community_0_2_screen.dart';
import 'package:cybitect0/presentation/community_0_4_screen/community_0_4_screen.dart';
import 'package:cybitect0/presentation/community_1_3_screen/community_1_3_screen.dart';
import 'package:cybitect0/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String firstPageScreen = '/first_page_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String signInScreen = '/sign_in_screen';

  static const String settingsScreen = '/settings_screen';

  static const String dashboardScreen = '/dashboard_screen';

  static const String sayNoScreen = '/say_no_screen';

  static const String dashboardHasilScreen = '/dashboard_hasil_screen';

  static const String dashboardHasil2Page = '/dashboard_hasil_2_page';

  static const String dashboardHasil2ContainerScreen =
      '/dashboard_hasil_2_container_screen';

  static const String mentalHealScreen = '/mental_heal_screen';

  static const String depresiScreen = '/depresi_screen';

  static const String depresiOneScreen = '/depresi_one_screen';

  static const String mydocChatHgThreeScreen = '/mydoc_chat_hg_three_screen';

  static const String mydocScreen = '/mydoc_screen';

  static const String mydocChatHgOneScreen = '/mydoc_chat_hg_one_screen';

  static const String mydocChatHgTwoScreen = '/mydoc_chat_hg_two_screen';

  static const String communityZeroScreen = '/community_zero_screen';

  static const String community01Screen = '/community_0_1_screen';

  static const String community02Screen = '/community_0_2_screen';

  static const String community04Screen = '/community_0_4_screen';

  static const String community13Screen = '/community_1_3_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    firstPageScreen: (context) => FirstPageScreen(),
    signUpScreen: (context) => SignUpScreen(),
    signInScreen: (context) => SignInScreen(),
    settingsScreen: (context) => SettingsScreen(),
    dashboardScreen: (context) => DashboardScreen(),
    sayNoScreen: (context) => SayNoScreen(),
    dashboardHasilScreen: (context) => DashboardHasilScreen(),
    dashboardHasil2ContainerScreen: (context) =>
        DashboardHasil2ContainerScreen(),
    mentalHealScreen: (context) => MentalHealScreen(),
    depresiScreen: (context) => DepresiScreen(),
    depresiOneScreen: (context) => DepresiOneScreen(),
    mydocChatHgThreeScreen: (context) => MydocChatHgThreeScreen(),
    mydocScreen: (context) => MydocScreen(),
    mydocChatHgOneScreen: (context) => MydocChatHgOneScreen(),
    mydocChatHgTwoScreen: (context) => MydocChatHgTwoScreen(),
    communityZeroScreen: (context) => CommunityZeroScreen(),
    community01Screen: (context) => Community01Screen(),
    community02Screen: (context) => Community02Screen(),
    community04Screen: (context) => Community04Screen(),
    community13Screen: (context) => Community13Screen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
