import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:likpinuz/app/config/AppTextStyle.dart';
import 'package:likpinuz/app/config/app_colors.dart';

import '../../../widgets/SkillAddFormField.dart';
class SkillWidget extends StatefulWidget {
  const SkillWidget({Key? key}) : super(key: key);

  @override
  State<SkillWidget> createState() => _SkillWidgetState();
}

class _SkillWidgetState extends State<SkillWidget> {
  List<String> skills=[];
  late TextEditingController controller;
  @override
  void initState() {
    controller=TextEditingController();
    super.initState();
  }
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return SizedBox(width: 400,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 10,),
        Text("Skill".tr,
        style: AppTextStyle.styleItalic7A7878_24w800,
        ),
        GridView.count(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          crossAxisCount: 2,
          crossAxisSpacing: 8,
          mainAxisSpacing: 5,
          childAspectRatio: 178/35,
          children:  [
            ...skills.map<Widget>((e) => Container(
              padding: const EdgeInsets.symmetric(horizontal: 9,vertical: 8),
              decoration:BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: AppColor.colorD9D9D9
              ),
              child:  Center(child: Row(
                children: [
                  Expanded(child: Text(e,
                    overflow: TextOverflow.ellipsis,
                  )),
                  InkWell(
                      onTap: (){skills.remove(e);setState(() {});},
                      child: SvgPicture.asset("assets/svg_icons/ic_delete.svg"))
                ],
              )),
            ) ).toList()



          ],
        ),
        const SizedBox(height: 5,),
        TextFormFieldSkill(controller: controller,onTapAdd: (){
          if(controller.text.length>1){
          skills.add(controller.text);
          controller.clear();
          setState(() {

          });
          }
        })
      ],
    ) ,
    );
  }
}
