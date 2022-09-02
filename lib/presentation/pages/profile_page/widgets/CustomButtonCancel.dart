import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../app/config/AppTextStyle.dart';




class CustomButtonCancel extends StatelessWidget {
  final VoidCallback? onTap;
  final double? width;
  final String text;

  const CustomButtonCancel({Key? key, this.onTap, this.width, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 56,
        width: width??148,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient:const LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  Color(0xffdbd9e3),
                  Color(0xffad9999),
                ])
        ),
        child:  Center(
          child: Text(text,
            textScaleFactor: 1,
            style: AppTextStyle.styleBlack6W700,
          ),
        ),
      ),
    );
  }
}
