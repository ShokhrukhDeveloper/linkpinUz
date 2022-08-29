import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:likpinuz/app/config/AppTextStyle.dart';
import 'package:likpinuz/app/config/app_colors.dart';

class MenuItem extends StatelessWidget {
  const MenuItem({Key? key,  required this.onTap, required this.isCurrent, required this.nameItem, required this.svgAssetName, required this.isExpand}) : super(key: key);
  final String nameItem;
  final String svgAssetName;
  final VoidCallback onTap;
  final bool isCurrent;
  final bool isExpand;
  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: onTap,
     child: Container(
       height: 40,
          width: isExpand?double.infinity:null,
          margin: const EdgeInsets.only(left: 28,bottom:20 ),
          padding: const EdgeInsets.only(left: 10,right: 10),
          decoration: BoxDecoration(
            color: isCurrent? AppColor.menuItemBGColor:Colors.white,
            borderRadius: BorderRadius.circular(9)
          ),

          child: Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SvgPicture.asset(svgAssetName),
              if(isExpand)const SizedBox(width: 18,),
              if(isExpand)Text(nameItem,style: AppTextStyle.profileItemStyle,)

            ],
          )),
    );
  }
}
