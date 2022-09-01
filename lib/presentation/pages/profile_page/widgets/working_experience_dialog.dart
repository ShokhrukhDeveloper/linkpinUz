import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:likpinuz/app/config/AppTextStyle.dart';
import 'package:likpinuz/presentation/pages/profile_page/widgets/work_experienece.dart';
import 'package:likpinuz/presentation/widgets/DatePickerField.dart';
import 'package:likpinuz/presentation/widgets/custom_text_field.dart';

import '../../../widgets/CustomButton.dart';

class WorkingExperienceAlertDialog extends StatefulWidget {
  const WorkingExperienceAlertDialog({Key? key}) : super(key: key);

  @override
  State<WorkingExperienceAlertDialog> createState() => _WorkingExperienceAlertDialogState();
}

class _WorkingExperienceAlertDialogState extends State<WorkingExperienceAlertDialog> {
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
                        fieldText: "Where:",
                        hintText: "Uzbekistan tashkent ...",
                        controller: TextEditingController(),
                         ),
                      const SizedBox(height: 15,),
                      CustomTextField(
                        fieldText: "position:",
                        hintText: "Uzbekistan tashkent ...",
                        controller: TextEditingController(),
                         ),
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
