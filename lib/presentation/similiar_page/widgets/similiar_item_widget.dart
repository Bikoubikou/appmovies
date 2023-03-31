import 'package:amine_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SimiliarItemWidget extends StatelessWidget {
  SimiliarItemWidget();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: CustomImageView(
        imagePath: ImageConstant.imgImage1154x108,
        height: getVerticalSize(
          154,
        ),
        width: getHorizontalSize(
          108,
        ),
        radius: BorderRadius.circular(
          getHorizontalSize(
            10,
          ),
        ),
        margin: getMargin(
          right: 12,
        ),
      ),
    );
  }
}
