import 'package:cybitect0/core/app_export.dart';
import 'package:flutter/material.dart';

class CustomBottomBar extends StatefulWidget {
  CustomBottomBar({this.onChanged});

  Function(BottomBarEnum)? onChanged;

  @override
  CustomBottomBarState createState() => CustomBottomBarState();
}

class CustomBottomBarState extends State<CustomBottomBar> {
  int selectedIndex = 0;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgSettings24x24,
      activeIcon: ImageConstant.imgSettings24x24,
      type: BottomBarEnum.Settings24x24,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgSettingsYellow2000124x24,
      activeIcon: ImageConstant.imgSettingsYellow2000124x24,
      type: BottomBarEnum.Settingsyellow2000124x24,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgCardiology,
      activeIcon: ImageConstant.imgCardiology,
      type: BottomBarEnum.Cardiology,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 44.v,
      decoration: BoxDecoration(
        color: appTheme.gray50002,
        borderRadius: BorderRadius.circular(
          22.h,
        ),
      ),
      child: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedFontSize: 0,
        elevation: 0,
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        items: List.generate(bottomMenuList.length, (index) {
          return BottomNavigationBarItem(
            icon: CustomImageView(
              imagePath: bottomMenuList[index].icon,
              height: 24.adaptSize,
              width: 24.adaptSize,
              color: appTheme.yellow20001,
            ),
            activeIcon: CustomImageView(
              imagePath: bottomMenuList[index].activeIcon,
              height: 24.adaptSize,
              width: 24.adaptSize,
              color: appTheme.yellow20001,
            ),
            label: '',
          );
        }),
        onTap: (index) {
          selectedIndex = index;
          widget.onChanged?.call(bottomMenuList[index].type);
          setState(() {});
        },
      ),
    );
  }
}

enum BottomBarEnum {
  Settings24x24,
  Settingsyellow2000124x24,
  Cardiology,
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    required this.type,
  });

  String icon;

  String activeIcon;

  BottomBarEnum type;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
