import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../../pages/profile_page/widgets/CustomButtonCancel.dart';
import '../CustomButton.dart';

// ignore: must_be_immutable
class IconPikerAlertDialogWidget extends StatelessWidget {
   IconPikerAlertDialogWidget({Key? key}) : super(key: key);

  static const List<String> _icons=[
  "assets/svg_icons/apple-icon.svg",

  "assets/svg_icons/google-play-store-icon.svg",

  "assets/svg_icons/linkedin-color-icon.svg",
  "assets/svg_icons/microsoft-dot-net-icon.svg",


  "assets/svg_icons/stackoverflow-color-icon.svg",
  "assets/svg_icons/telegram-icon.svg",




  "assets/svg_icons/yahoo-icon.svg",

  "assets/svg_icons/ic_github.svg",
  ];
  var col=Colors.white.obs;
  @override
  Widget build(BuildContext context) {
    return  Obx(
          ()=> AlertDialog(
        backgroundColor: col.value,
        contentPadding: const EdgeInsets.all(20),
        title: const Text("Color picker"),
        content:
        SizedBox(
          width: 400,
          height: 400,
          child: GridView.count(crossAxisCount: 5,

            childAspectRatio: 1,
            mainAxisSpacing: 20,
            crossAxisSpacing: 20,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            children:
            _icons.map((e) =>InkWell(
              onTap: (){
                
              },
              child: Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  
                  borderRadius: BorderRadius.circular(40),

                ),
                child: SvgPicture.asset(e),
              ),
            ), ).toList()

            ,
          ),
        ),
        actionsAlignment: MainAxisAlignment.spaceBetween,
        actions: [
          CustomButtonCancel(text: "Cancel",onTap: (){
            Navigator.pop(context);
          },),

          CustomButton(text: "OK",
            onTap: (){
              Navigator.pop(context,col.value.value);
            },
          ),
        ],
      ),
    );
  }

}
