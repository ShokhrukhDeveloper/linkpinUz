import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:likpinuz/app/config/app_colors.dart';


class ProductAddImage extends StatelessWidget{
  const ProductAddImage({Key? key,this.imageWidget}) : super(key: key);
  final Widget? imageWidget;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 110,
      height: 110,
      decoration:BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color:AppColor.black,
          width: 2.0)
      ),
      child:Center(child:imageWidget??SvgPicture.asset("assets/svg_pictures/img_add_image.svg"),)
    );
  }
}
