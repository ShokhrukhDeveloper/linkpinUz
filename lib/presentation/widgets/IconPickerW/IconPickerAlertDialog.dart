import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:likpinuz/app/config/app_colors.dart';
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
  "assets/svg_icons/ic_facebook.svg",
  "assets/svg_icons/ic_twitter.svg",
  "assets/svg_icons/ic_instagram.svg",
  "assets/svg_icons/ic_tic-tok.svg",
  "assets/svg_icons/ic_youtube.svg",
  "assets/svg_icons/ic_reddit.svg",
  "assets/svg_icons/ic_gitlab.svg",
  "assets/svg_icons/ic_spotify.svg",
  "assets/svg_icons/ic_itunes.svg",
  "assets/svg_icons/ic_penterest.svg",
  "assets/svg_icons/ic_tumbler.svg",
  "assets/svg_icons/ic_whatsapp.svg",
  "assets/svg_icons/ic_googleplus.svg",
  "assets/svg_icons/ic_meetup.svg",
  "assets/svg_icons/ic_imo.svg",
  "assets/svg_icons/ic_googlecloud.svg",
  "assets/svg_icons/ic_windows.svg",
  ];
  RxString col="".obs;
  RxInt index=(-1).obs;
  @override
  Widget build(BuildContext context) {

    return  AlertDialog(

        contentPadding: const EdgeInsets.all(20),
        title: const Text("Icon picker"),
        content:
        SizedBox(
          width: 400,
          height: 400,
          child: Obx(
            ()=> GridView.count(crossAxisCount: 5,

              childAspectRatio: 1,
              mainAxisSpacing: 20,
              crossAxisSpacing: 20,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              children:
              _icons.map((e){

               return InkWell(
                onTap: (){
                  col(e);

                },
                child: Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(

                    borderRadius: BorderRadius.circular(10)


                  ),
                  child: Stack(

                    children: [
                      SvgPicture.asset(e,width: 78,height: 78,),
                      Container(
                        width: double.infinity,
                        height: double.infinity,
                        decoration: BoxDecoration(
                          color: col.value==e?AppColor.colorTextField.withOpacity(0.5):null,
                          borderRadius: BorderRadius.circular(10)
                        ),

                      )
                    ],
                  ),
                ),
              );} ).toList()

              ,
            ),
          ),
        ),
        actionsAlignment: MainAxisAlignment.spaceBetween,
        actions: [
          CustomButtonCancel(text: "Cancel",onTap: (){
            Navigator.pop(context);
          },),

          CustomButton(text: "OK",
            onTap: (){
              Navigator.pop(context,col.value);
            },
          ),
        ],
      );
  }

}
