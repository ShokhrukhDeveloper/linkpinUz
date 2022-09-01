import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ButtonRemovie extends StatelessWidget {
  const ButtonRemovie({Key? key, this.onTap, this.color}) : super(key: key);
final VoidCallback? onTap;
final Color? color;
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onTap,
        child: SvgPicture.asset("assets/svg_icons/ic_delete.svg",color: color));
  }
}
