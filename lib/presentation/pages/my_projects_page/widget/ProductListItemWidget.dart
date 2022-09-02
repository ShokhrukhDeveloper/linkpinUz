import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:likpinuz/app/config/AppTextStyle.dart';
import 'package:likpinuz/app/config/app_colors.dart';
import 'package:likpinuz/presentation/widgets/removie_button.dart';

import 'StarWidget.dart';
class ProductListItemWidget extends StatelessWidget {
  const ProductListItemWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20,horizontal: 20),
      height: 200,


      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(color: AppColor.shadow1E1E1E,spreadRadius: 10,blurRadius: 10,offset: Offset.fromDirection(15,5))
        ]
      ),
      padding: const EdgeInsets.all(12),
      child: LayoutBuilder(
        builder: (context,l) {
          print(l.maxWidth);
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ///Head of The Widget
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:    [
                if(l.maxWidth-100>20)SizedBox(
                  width: l.maxWidth-200,
                  child: const Text("Hasanboy Do’smatov - 1 oy ilgari.",
                    style: AppTextStyle.styleBlack10W200,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Row(
                  children: [
                   if(l.maxWidth>350) StarsWidget(star: 2, onRate: (e) {  }, isRated: false,),
                    const Icon(Icons.more_vert),
                  ],
                ),

              ],),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.min,
                    children:  [
          if(l.maxWidth-100>20)SizedBox(
            height: 25,
                            width: l.maxWidth-100,
                        child: Text("Tentakmen web sayti ",
                          style: AppTextStyle.styleBlack24W700,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      const SizedBox(height: 7,),

                          if(l.maxWidth-100>20)SizedBox(
                        width: l.maxWidth-100,
                        child: Text("Ushbu loyihada ajoyib loyihalimdan biri bo’lib ...",
                          style: AppTextStyle.styleBlack12W300,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      const SizedBox(height: 10,),
                    if(l.maxWidth-150>1) SizedBox(width: l.maxWidth-150,
                       child: SingleChildScrollView(
                         scrollDirection: Axis.horizontal,
                         physics: const NeverScrollableScrollPhysics(),

                         child: Row(children: List<Widget>.generate(3, (index) =>
                             Container(
                               margin: const EdgeInsets.symmetric(horizontal: 5),
                               height: 80,width: 130,child:  ClipRRect(
                             borderRadius: BorderRadius.circular(8),
                             child: CachedNetworkImage(imageUrl: "https://picsum.photos/200/300",fit: BoxFit.cover,)),)),),
                       ),
                     )
                    ],
                  ),
                  Visibility(
                    visible: l.maxWidth>300,
                    child:Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 90,height: 90,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(45)
                          ),
                          child:  ClipRRect(
                              borderRadius: BorderRadius.circular(45),
                              child: CachedNetworkImage(imageUrl: "https://picsum.photos/200/300",fit: BoxFit.cover,)),
                        ),
                        ButtonRemovie(onTap: (){},)

                      ],
                    )
                  )
                ],
              )

            ]
            ,
          );
        }
      ),
    );
  }
}



