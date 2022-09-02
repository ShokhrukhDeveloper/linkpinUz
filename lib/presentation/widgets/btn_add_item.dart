import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class ButtonAddItem  extends StatelessWidget {
  const ButtonAddItem ({Key? key, this.onTap, this.asset, this.width, this.height}) : super(key: key);
  final VoidCallback? onTap;
  final String? asset;
  final double? width;
  final double? height;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: SizedBox(
          height: height,
          width: width,
          child: SvgPicture.asset(asset??"assets/svg_icons/ic_add.svg")),
    );
  }
}
