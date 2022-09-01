import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AddLanguageButton extends StatelessWidget {
  final VoidCallback? onTap;
  const AddLanguageButton({Key? key, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: SvgPicture.asset("assets/svg_icons/ic_add_language.svg"),
    );
  }
}
