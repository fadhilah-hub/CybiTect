import 'package:cybitect0/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class DashboardOnDialog extends StatelessWidget {
  const DashboardOnDialog({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 248.h,
      padding: EdgeInsets.symmetric(
        horizontal: 41.h,
        vertical: 26.v,
      ),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder24,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "Sedang mendeteksi . . .",
            style: CustomTextStyles.bodyLargeRegular,
          ),
          SizedBox(height: 24.v),
          CustomImageView(
            imagePath: ImageConstant.imgMobile,
            height: 53.adaptSize,
            width: 53.adaptSize,
          ),
        ],
      ),
    );
  }
}
