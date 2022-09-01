import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../app/config/AppTextStyle.dart';
import '../../../widgets/CustomButton.dart';
import '../../../widgets/DatePickerField.dart';
import '../../../widgets/custom_text_field.dart';

class EducationDialogWidget extends StatelessWidget {
  const EducationDialogWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: InkWell(
        onTap: ()=>Navigator.of(context).pop(),
        child: Center(
          child: InkWell(
            onTap: (){},
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
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(height: 25,),
                      Text("working_experience.".tr,style: AppTextStyle.styleItalic7A7878_24w800,),
                      const SizedBox(height: 15,),
                      CustomDatePickerField(hintText: "hintText"),
                      const SizedBox(height: 15,),
                      CustomTextField(
                        fieldText: "Name::",
                        hintText: "Name of education ...",
                        controller: TextEditingController(),
                      ),
                      const SizedBox(height: 15,),
                      CustomTextField(
                        fieldText: "Field:",
                        hintText: "Field of education ...",
                        controller: TextEditingController(),
                      ),
                      const SizedBox(height: 15,),
                      CustomButton(text: 'add'.tr,width: double.infinity,
                      onTap: (){
                        Navigator.of(context).pop();
                      },
                      ),
                      const SizedBox(height: 35,),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
