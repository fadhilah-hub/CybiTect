import 'package:cybitect0/core/app_export.dart';
import 'package:flutter/material.dart';
import 'widget1_item_widget.dart';

// ignore: must_be_immutable
class MentalhealchipviewItemWidget extends StatelessWidget {
  const MentalhealchipviewItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 19.v,
      ),
      decoration: AppDecoration.outlinePrimary3.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Wrap(
        runSpacing: 143.v,
        spacing: 143.h,
        children: List<Widget>.generate(3, (index) => Widget1ItemWidget()),
      ),
    );
  }
}
