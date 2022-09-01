import 'package:flutter/material.dart';
import 'package:likpinuz/app/config/AppTextStyle.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({Key? key, this.onTap, required this.text, this.width}) : super(key: key);
  final VoidCallback? onTap;
  final String text;
  final double? width;
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
                  Color(0xff2D2A35),
                  Color(0xff8E8E8E),
                ])
        ),
        child:  Center(
          child: Text(text,
            textScaleFactor: 1,
            style: AppTextStyle.styleWhite16W700,
          ),
        ),
      ),
    );
  }
}
