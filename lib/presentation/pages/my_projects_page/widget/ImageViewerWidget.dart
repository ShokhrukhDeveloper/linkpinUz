import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
class ImageViewerWidegt extends StatelessWidget {
  const ImageViewerWidegt({Key? key, required this.imageProvider}) : super(key: key);
final ImageProvider imageProvider;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body:
      SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(image: imageProvider,fit: BoxFit.fitHeight)
                ),

              ),
            ),
            Positioned(
                top: 50,
                right: 50,
                child: IconButton(
                  enableFeedback: true,
              color: Colors.black45,
              onPressed: (){
                Navigator.pop(context);
              },
              icon: const Icon(Icons.close,size: 25,),
            ))
          ],
        ),
      ),
    );
  }
}
