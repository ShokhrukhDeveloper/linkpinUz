import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:likpinuz/app/config/AppTextStyle.dart';

class RightNavigationBarUserData extends StatelessWidget {
   RightNavigationBarUserData({
     Key? key,
     required this.isOpened,
      this.userName,
     this.imgUrl,
     required this.onTap,

   }) : super(key: key);

  final bool isOpened;
   VoidCallback onTap;
   String? userName;
   String? imgUrl;

  @override
  Widget build(BuildContext context) {

    return  Column(

      children:  [
        Row(
          mainAxisAlignment:MainAxisAlignment.end,children: [
          InkWell(
            onTap: onTap,
            child: Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(15)
                ),
                child:isOpened?
                const Icon(CupertinoIcons.back):
                const Icon(CupertinoIcons.forward)),
          )
        ],),
        Container(
          width:80,
          height: 80,
          decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(40),
              image:  DecorationImage(
                  image: CachedNetworkImageProvider(
                    imgUrl??"https://picsum.photos/200/300",
                    maxHeight: 50,
                    maxWidth: 50,

                  ),
                  fit: BoxFit.cover

              )
          ),
        ),
        const SizedBox(height: 10,),
         Text("${isOpened?userName:userName?[0]}",
            style: AppTextStyle.userNamesStyle
        )
        // CachedNetworkImage(imageUrl: "https://picsum.photos/200/300")),

      ],
    );
  }
}
