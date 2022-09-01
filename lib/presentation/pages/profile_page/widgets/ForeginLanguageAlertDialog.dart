import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:likpinuz/app/config/AppTextStyle.dart';
import 'package:likpinuz/app/config/Languages.dart';
import 'package:likpinuz/presentation/pages/profile_page/widgets/LanguageWidget.dart';
import 'package:likpinuz/presentation/widgets/custom_text_field.dart';

import '../../../widgets/CustomButton.dart';

class ForeginLanguageAlertDialog extends StatefulWidget {
  const ForeginLanguageAlertDialog({Key? key, required this.languages}) : super(key: key);
  final List<Language> languages;
  @override
  State<ForeginLanguageAlertDialog> createState() =>
      _ForeginLanguageAlertDialogState();
}

class _ForeginLanguageAlertDialogState
    extends State<ForeginLanguageAlertDialog> {
Language? langauage;
LanguageLevel? langauageLevel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.transparent,
        body: InkWell(
          onTap: () => Navigator.of(context).pop(),
          child: Center(
            child: SizedBox(
              width: 450,
              child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(24)),
              child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 30,),
                      Text("Language".tr,style: AppTextStyle.style7A7878_20w800,),
                      const SizedBox(height: 10,),
                      Row(
                        children: [

                          SizedBox(
                            width: 400,
                            child: DropdownButtonFormField<Language>(
                                isExpanded: true,

                                items: widget.
                                languages.map<DropdownMenuItem<Language>>(
                                        (e) =>DropdownMenuItem(child:

                                    Text(e.name??'',overflow: TextOverflow.fade,),
                                      value: e,

                                    )).toList(), onChanged: (e){

                              langauage=e;
                            }),
                          )

                        ],
                      ),
                      const SizedBox(height: 10,),
                      SizedBox(
                        width: 400,
                        child: DropdownButton(
                          value: langauageLevel,
                          isExpanded: true,
                            items: LanguageLevel.values.map<DropdownMenuItem<LanguageLevel>>(
                                    (e) => DropdownMenuItem<LanguageLevel>(
                                        child: Text(e.name),
                                        value: e,
                                    )).toList(), onChanged: (LanguageLevel? e){
                            langauageLevel=e;
                            setState(() {});
                        }),
                      ),
                      const SizedBox(height: 15,),
                      CustomButton(text: 'add'.tr,width: 400,
                      onTap: (){
                        Navigator.of(context).pop<ForeignLanguage>(ForeignLanguage(langauage, langauageLevel));
                      },
                      ),
                      const SizedBox(height: 25,),

                    ],
                  ),
              ),
              ),
            ),
          ),
        ));
  }
}
