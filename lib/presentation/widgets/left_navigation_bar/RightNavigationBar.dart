
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:likpinuz/app/config/AppTextStyle.dart';

import 'RightNavigationBar.UserData.Dart.dart';
import 'menu_item.dart';

class RightNavigationBar extends StatefulWidget {
  const RightNavigationBar({Key? key, required this.pageController}) : super(key: key);
  final PageController pageController;
  @override
  State<RightNavigationBar> createState() => _RightNavigationBarState();
}

class _RightNavigationBarState extends State<RightNavigationBar> {
  final _isOpened=true.obs;

var index=0.obs;
  @override
  Widget build(BuildContext context) {
    return Obx(()=>
       Container(

        decoration: const BoxDecoration(
         boxShadow: [
           BoxShadow(
             color: Colors.white,
             spreadRadius: 3,
             blurRadius: 4,
             offset: Offset(0, 3), // changes position of shadow
           ),
         ]
        ),

        height: double.infinity,
        width: _isOpened.value? 300:100,
        // duration:const Duration(seconds: 2),
        // curve: Curves.ease,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RightNavigationBarUserData(
              isOpened: _isOpened.value,
              userName: "Shoxrux Yarashov",
              onTap: () {
              _isOpened(!_isOpened.value);

              },),
            const SizedBox(height: 40,),

            // MenuItem(
            //   svgAssetName: 'assets/svg_icons/ic_profile.svg',

            //   nameItem: 'Profile',
            //   isCurrent: index.value==0, onTap: () {
            //   index(0);
            //   widget.pageController.jumpToPage(0);
            // }, isExpand: _isOpened.value,),
            // MenuItem(
            //   svgAssetName: 'assets/svg_icons/ic_setting.svg',
            //   nameItem: 'Akkaunt',
            //   isCurrent: index.value==1,
            //   onTap: () {
            //     index(1);
            //   widget.pageController.jumpToPage(1);},
            //   isExpand: _isOpened.value,),
            // MenuItem(
            //   svgAssetName: 'assets/svg_icons/ic_projects.svg',
            //   nameItem: 'Loyihlar',
            //   isCurrent: index.value==2,
            //   onTap: () {
            //     index(2);
            //   widget.pageController.jumpToPage(2);
            // }, isExpand: _isOpened.value,),
            // MenuItem(
            //   svgAssetName: 'assets/svg_icons/ic_projects.svg',
            //   nameItem: 'Loyihlar',
            //   isCurrent: index.value==2,
            //   onTap: () {
            //     index(2);
            //   widget.pageController.jumpToPage(3);
            // }, isExpand: _isOpened.value,),


          ],
        ),

      ),
    );
  }
}
