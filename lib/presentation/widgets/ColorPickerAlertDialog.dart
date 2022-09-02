import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:likpinuz/presentation/widgets/CustomButton.dart';

import '../pages/profile_page/widgets/CustomButtonCancel.dart';
class ColorPickerWidget extends StatelessWidget {
   ColorPickerWidget({Key? key}) : super(key: key);
static const List<Color> _colors=[
  Color(0xff3771C8),
  Color(0xff443A42),
  Color(0xff2253EF),
  Color(0xff4267B2),
  Color(0xffB3389F),
  Color(0xff0B66C3),
  Color(0xffEC6342),
  Color(0xffD1F573),
  Color(0xff673AB7),
  Color(0xffB0B0B0),
  Color(0xff7547D4),
  Color(0xff5A488C),
  Color(0xff9A7EBA),
  Color(0xffDB1FC5),
  Color(0xffD09BC3),
  Color(0xffD6C759),
  Color(0xffD99A1F),
  Color(0xffEB8892),
  Color(0xffDD88EB),
  Color(0xffD0EB88),
  Color(0xff881F17),
  Color(0xffEB8F88),
  Color(0xffEB88C5),
  Color(0xffBA8CBA),
  Color(0xffD68E9D),
  Color(0xffEB8F88),
  Color(0xffEB8C88),
  Color(0xffC189EB),
  Color(0xff89EB90),
  Color(0xffA9A9A9),
  Color(0xffEB8F88),
  Color(0xff9fb962),
  Color(0xffed9d97),
  Color(0xff510600),
  Color(0xff89E5EB),
  Color(0xffB9DDFC),
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
          child: GridView.count(crossAxisCount: 6,

          childAspectRatio: 1,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          children:
             _colors.map((e) =>InkWell(
               onTap: (){
                 col(e);
               },
               child: Container(
                 width: 60,
                 height: 60,
                 decoration: BoxDecoration(
                   color: e,
                   borderRadius: BorderRadius.circular(30),

                 ),
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
