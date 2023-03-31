import 'package:amine_s_application1/core/app_export.dart';
import 'package:amine_s_application1/widgets/custom_button.dart';
import 'package:amine_s_application1/widgets/custom_checkbox.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class DownloadMoviePopUpDialog extends StatelessWidget {
  bool checkbox = false;

  bool checkbox1 = false;

  bool checkbox2 = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: getHorizontalSize(
        325,
      ),
      padding: getPadding(
        left: 30,
        top: 34,
        right: 30,
        bottom: 34,
      ),
      decoration: AppDecoration.fillBluegray800.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder30,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CustomImageView(
            svgPath: ImageConstant.imgFloatingicon,
            height: getSize(
              84,
            ),
            width: getSize(
              84,
            ),
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: getPadding(
                top: 19,
              ),
              child: Text(
                "Download File",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtPoppinsRegular20,
              ),
            ),
          ),
          CustomCheckbox(
            text: "Height (1080p)",
            value: checkbox,
            margin: getMargin(
              top: 35,
            ),
            fontStyle: CheckboxFontStyle.PoppinsMedium12WhiteA700,
            onChange: (value) {
              checkbox = value;
            },
          ),
          CustomCheckbox(
            text: "Mid (720p)",
            value: checkbox1,
            margin: getMargin(
              top: 15,
            ),
            fontStyle: CheckboxFontStyle.PoppinsRegular12WhiteA700a2_1,
            onChange: (value) {
              checkbox1 = value;
            },
          ),
          CustomCheckbox(
            text: "Low (360p)",
            value: checkbox2,
            margin: getMargin(
              top: 15,
            ),
            fontStyle: CheckboxFontStyle.PoppinsRegular12WhiteA700a2_1,
            onChange: (value) {
              checkbox2 = value;
            },
          ),
          CustomButton(
            height: getVerticalSize(
              50,
            ),
            text: "Download",
            margin: getMargin(
              left: 22,
              top: 36,
              right: 22,
            ),
            alignment: Alignment.center,
          ),
        ],
      ),
    );
  }
}
