import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class ButtonAddItem  extends StatelessWidget {
  const ButtonAddItem ({Key? key, this.onTap}) : super(key: key);
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: SvgPicture.asset("assets/svg_icons/ic_add.svg"),
    );
  }
}
