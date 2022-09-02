import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'ImageViewerWidget.dart';
class ProjectImageItemWidget extends StatelessWidget {
   ProjectImageItemWidget({Key? key}) : super(key: key);
final img=CachedNetworkImageProvider(
  "https://picsum.photos/200/300",);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        showDialog(context: context, builder: (_)=>ImageViewerWidegt(imageProvider: img,));
      },
      child: Container(
        width:350,
        height: 350,
        decoration:  BoxDecoration(
            color: Colors.red,
            image:  DecorationImage(
                image:img,
                fit: BoxFit.cover

            )
        ),
      ),
    );
  }
}
