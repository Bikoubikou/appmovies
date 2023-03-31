import '../history_screen/widgets/history_item_widget.dart';import 'package:amine_s_application1/core/app_export.dart';import 'package:amine_s_application1/widgets/app_bar/appbar_iconbutton_1.dart';import 'package:amine_s_application1/widgets/app_bar/appbar_title.dart';import 'package:amine_s_application1/widgets/app_bar/custom_app_bar.dart';import 'package:flutter/material.dart';import 'package:amine_s_application1/presentation/history_delete_dialog/history_delete_dialog.dart';class HistoryScreen extends StatelessWidget {@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(backgroundColor: ColorConstant.black900, appBar: CustomAppBar(height: getVerticalSize(51), leadingWidth: 60, leading: AppbarIconbutton1(svgPath: ImageConstant.imgArrowleftWhiteA700, margin: getMargin(left: 25, top: 8, bottom: 8), onTap: () => onTapArrowleft4(context)), centerTitle: true, title: AppbarTitle(text: "History")), body: Padding(padding: getPadding(left: 25, top: 23, right: 25), child: ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: getVerticalSize(16));}, itemCount: 4, itemBuilder: (context, index) {return HistoryItemWidget(onTapImgOverflowmenu: () => onTapImgOverflowmenu(context));})))); } 
onTapImgOverflowmenu(BuildContext context) { showDialog(context: context, builder: (_) => AlertDialog(content: HistoryDeleteDialog(), backgroundColor: Colors.transparent)); } 
onTapArrowleft4(BuildContext context) { Navigator.pop(context); } 
 }
