import 'package:cybitect0/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Widget1ItemWidget extends StatelessWidget {
  const Widget1ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return RawChip(
      showCheckmark: false,
      labelPadding: EdgeInsets.zero,
      label: Text(
        "Depresi",
        style: TextStyle(
          color: appTheme.gray80003,
          fontSize: 16.fSize,
          fontFamily: 'Josefin Sans',
          fontWeight: FontWeight.w500,
        ),
      ),
      selected: false,
      backgroundColor: appTheme.gray80003,
      selectedColor: appTheme.orange100,
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: appTheme.yellow20001,
          width: 1.h,
        ),
        borderRadius: BorderRadius.circular(
          12.h,
        ),
      ),
      onSelected: (value) {},
    );
  }
}
