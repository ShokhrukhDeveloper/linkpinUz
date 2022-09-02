
import 'dart:html';
import 'dart:typed_data';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../app/config/AppTextStyle.dart';
import '../../../../app/config/app_colors.dart';
import '../../../widgets/CustomButton.dart';

import '../../../widgets/SkillAddFormField.dart';
import '../../../widgets/custom_text_field.dart';
import '../../../widgets/removie_button.dart';
import 'ProductAddingImage.dart';
class AddProductAlertDialogWidget extends StatefulWidget {
  const AddProductAlertDialogWidget({Key? key}) : super(key: key);

  @override
  State<AddProductAlertDialogWidget> createState() => _AddProductWidgetState();
}

class _AddProductWidgetState extends State<AddProductAlertDialogWidget> {
  TextEditingController controller=TextEditingController();
  List<String> link=[];

List<Uint8List?> files=[];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: SizedBox(
          width: 450,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            decoration: BoxDecoration(
                color: Colors.white,

                borderRadius: BorderRadius.circular(24)
            ),
            child:SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 25,),
                  Center(child: Text("Project Name".tr,style: AppTextStyle.styleItalic7A7878_24w800,)),
                  CustomTextField(
                    fieldText: "Project name:",
                    hintText: "New Flutter Web site",
                    controller: TextEditingController(),
                  ),
                  const SizedBox(height: 15,),
                  /// link Add
                  ...link.map<Widget>((e) => Container(
                    margin: const EdgeInsets.symmetric(vertical: 5),
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
                        ButtonRemovie(
                          onTap: (){link.remove(e);setState(() {});},
                        ),
                      ],
                    )),
                  ) ).toList(),
                  const SizedBox(height: 15,),
                  Text("Links:".tr,style: AppTextStyle.styleItalic7A7878_24w800,),
                  TextFormFieldSkill(
                      hintText: "Some links write here ...",
                      controller: controller,onTapAdd: (){
                    if(controller.text.length>1){
                      link.add(controller.text);
                      controller.clear();
                      setState(() {
                      });
                    }
                  }),
                  /// DescriptionAdd
                  const SizedBox(height: 15,),
                  CustomTextField(
                    maxLines: 6,
                    textAlign: TextAlign.start,
                    onSubmit: () {  },
                    fieldText: 'description'.tr,
                    onChange: (String onChange) {  },
                    hintText: 'some description here...', controller: TextEditingController(),
                    // contentPadding: const EdgeInsets.symmetric(vertical: 40),

                  ),
                  const SizedBox(height: 15,),
                  CustomButton(text: 'add'.tr,width: double.infinity,),
                  const SizedBox(height: 35,),
                  GridView.count(
                      shrinkWrap: true,
                      crossAxisCount: 3,
                    crossAxisSpacing: 4,
                    mainAxisSpacing: 4,
                    childAspectRatio: 1,
                    children: [
                      InkWell(
                          onTap: ()async{
                            var result=await FilePicker.platform.pickFiles(
                              type: FileType.image,allowMultiple: false
                            );
                            if(result!=null)
                            {
                              if (kDebugMode) {
                                Uint8List? r=result.files.first.bytes;
                                files.add(r);
                                setState(() {

                                });
                              }
                            }
                          },
                          child: ProductAddImage()),
                      ...files.map((e) => ProductAddImage(imageWidget: e!=null?Image.memory(e):null,)),

                    ],
                  ),
                  const SizedBox(height: 40,)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
