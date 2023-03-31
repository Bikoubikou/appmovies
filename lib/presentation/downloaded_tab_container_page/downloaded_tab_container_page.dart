import 'package:amine_s_application1/core/app_export.dart';
import 'package:amine_s_application1/presentation/downloaded_page/downloaded_page.dart';
import 'package:amine_s_application1/presentation/downloading_page/downloading_page.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class DownloadedTabContainerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.black900,
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillBlack900,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: getPadding(
                      top: 11,
                    ),
                    child: Text(
                      "Download",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsMedium18,
                    ),
                  ),
                  Container(
                    height: getVerticalSize(
                      40,
                    ),
                    width: getHorizontalSize(
                      300,
                    ),
                    margin: getMargin(
                      top: 34,
                    ),
                    child: TabBar(
                      //TODO: Please add tab controller
                      labelColor: ColorConstant.red700,
                      labelStyle: TextStyle(
                        fontSize: getFontSize(
                          14,
                        ),
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                      ),
                      unselectedLabelColor: ColorConstant.whiteA70087,
                      unselectedLabelStyle: TextStyle(
                        fontSize: getFontSize(
                          14,
                        ),
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                      ),
                      indicatorColor: ColorConstant.red700,
                      tabs: [
                        Tab(
                          child: Text(
                            "Downloaded",
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Tab(
                          child: Text(
                            "Downloading",
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: getVerticalSize(
                      574,
                    ),
                    child: TabBarView(
                      //TODO: Please add tab controller
                      children: [
                        DownloadedPage(),
                        DownloadingPage(),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
