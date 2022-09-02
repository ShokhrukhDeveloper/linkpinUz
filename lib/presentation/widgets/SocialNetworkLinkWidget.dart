import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../app/config/AppTextStyle.dart';
import 'dart:html' as html;

class SocialNetworkLinkWidget extends StatelessWidget {
  final String name;
  final String? link;
  final int? colorCode;
  final String? asset;

  const SocialNetworkLinkWidget({Key? key, required this.name, required this.link, this.colorCode, this.asset}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    debugPrint("asset=> $asset");
    return InkWell(
      onTap: (){
        String url = 'https://github.com/ShokhrukhDeveloper';
        html.window.open(url, '_blank');
      },
      child: Container(

        margin: const EdgeInsets.all(5),
        height: 78,
        width: 660,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Color(colorCode??0xff673AB7),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(width: 10,),

          SvgPicture.asset(asset??"assets/svg_icons/ic_github.svg",width: 50,height: 50 ),
            const SizedBox(width: 10,),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey)
              ),
            ),
            const SizedBox(width: 10,),
             Expanded(child: Text(name,
              style: AppTextStyle.styleWhite32W400,
              overflow: TextOverflow.ellipsis,
            )),
            SvgPicture.asset("assets/svg_icons/ic_link.svg"),
            const SizedBox(width: 10,),


          ],
        ),
      ),
    );
  }
}
