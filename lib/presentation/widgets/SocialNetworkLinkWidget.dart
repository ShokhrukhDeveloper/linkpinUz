import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../app/config/AppTextStyle.dart';
import 'dart:html' as html;

class SocialNetworkLinkWidget extends StatelessWidget {
  final String name;
  final String link;

  const SocialNetworkLinkWidget({Key? key, required this.name, required this.link}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        String url = 'https://flutter.dev';
        html.window.open(url, '_blank');
      },
      child: Container(

        margin: const EdgeInsets.all(5),
        height: 78,
        width: 660,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.deepPurple,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(width: 10,),

            SvgPicture.asset("assets/svg_icons/ic_github.svg"),
            const SizedBox(width: 10,),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey)
              ),
            ),
            const SizedBox(width: 10,),
            const Expanded(child: Text("Github.com@Tursunov_s",
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
