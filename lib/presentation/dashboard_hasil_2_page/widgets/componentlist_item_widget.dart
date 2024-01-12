import 'package:cybitect0/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ComponentlistItemWidget extends StatelessWidget {
  const ComponentlistItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 11.h,
        vertical: 7.v,
      ),
      decoration: AppDecoration.outlinePrimary3.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 347.h,
            margin: EdgeInsets.only(right: 10.h),
            child: Text(
              "“Wkwk apaan si lo jelek banget kalau pakai itu. Ga cocok sumpah hahahahahaha”",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.bodyLarge,
            ),
          ),
          SizedBox(height: 2.v),
          Text(
            "-@sipalingkeren (4 Januari 2024)",
            style: CustomTextStyles.bodyLargeRegular,
          ),
          SizedBox(height: 4.v),
        ],
      ),
    );
  }
}
