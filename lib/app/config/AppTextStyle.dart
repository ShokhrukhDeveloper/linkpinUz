import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppTextStyle{
  static const userNamesStyle=TextStyle(
    fontSize: 24,
    color: Colors.black,
    fontWeight: FontWeight.bold
  );
  static const styleNameProject=TextStyle(
    fontSize: 32,
    color: AppColor.black,
    fontWeight: FontWeight.bold
  );
  static const styleNameProjectDescription=TextStyle(
    fontSize: 22,
    color: AppColor.black,
    fontWeight: FontWeight.w900
  );
  static const styleNameOwnerData=TextStyle(
    fontSize: 15,
    color: AppColor.black,
    fontWeight: FontWeight.w200
  );

  static const profileItemStyle= TextStyle(
      fontSize: 20,
      color: AppColor.black,
      fontWeight: FontWeight.w600
  );
  static const styleBlack16W600=  TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: 16,
      fontStyle: FontStyle.normal
  );
  static const styleBlack15W300=  TextStyle(
      fontWeight: FontWeight.w300,
      fontSize: 15,
      fontStyle: FontStyle.normal
  );
  static const styleBlack16W800=  TextStyle(
      fontWeight: FontWeight.w800,
      fontSize: 16,
      fontStyle: FontStyle.normal
  );
  static const style7A7878_20w800=  TextStyle(
  color: AppColor.colorTextField,
  fontWeight: FontWeight.w400,
  fontSize: 20,
  );
   static const styleItalic7A7878_24w800=  TextStyle(
  color: AppColor.colorTextField,
  fontWeight: FontWeight.w400,
  fontSize: 24,
  );
   static const styleWhite16W700=  TextStyle(
       letterSpacing: 3,
       fontSize: 16,
       fontWeight: FontWeight.w700,
       color: Colors.white
   );
   static const styleBlack6W700=  TextStyle(
       letterSpacing: 3,
       fontSize: 16,
       fontWeight: FontWeight.w700,
       color: Colors.black
   );
  static const styleWhite32W400=  TextStyle(
      letterSpacing: 3,
      fontSize: 32,
      fontWeight: FontWeight.w400,
      color: Colors.white
  );
  static const styleBlack10W200=  TextStyle(
      fontSize: 10,
      fontWeight: FontWeight.w200,
      color: Colors.black
  );
  static const styleBlack24W700=  TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w700,
      color: Colors.black
  );
  static const styleBlack12W300=  TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w300,
      color: Colors.black
  );

}