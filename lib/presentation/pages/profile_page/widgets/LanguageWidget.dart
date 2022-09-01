import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:get/get.dart';
import 'package:likpinuz/app/config/AppTextStyle.dart';
import 'package:likpinuz/app/config/Languages.dart';
import 'package:likpinuz/presentation/pages/profile_page/widgets/ForeginLanguageAlertDialog.dart';

import '../../../widgets/add_language_button.dart';

class LanguageWidget extends StatefulWidget {
  const LanguageWidget({Key? key}) : super(key: key);

  @override
  State<LanguageWidget> createState() => _LanguageWidgetState();
}

class _LanguageWidgetState extends State<LanguageWidget> {
  var langages=Languages();
  String? nativeLanguage='Uzbek';
var foreignLanguage=<ForeignLanguage>[];
  @override
  Widget build(BuildContext context) {
    debugPrint("${langages.languages.first.name}");
    return SizedBox(
      width: 400,
      child: Column(

        children: [
          Row(
            children: [
              Text("nativeLanguage".tr +" :",style: AppTextStyle.style7A7878_20w800,),
              SizedBox(
                width: 200,
                child: DropdownButtonFormField<String>(
                    isExpanded: true,
                    value: langages.languages[170].name,
                    items: langages.
                    languages.map<DropdownMenuItem<String>>(
                            (e) =>DropdownMenuItem(child:

                            Text(e.name??'',overflow: TextOverflow.fade,),
                            value: e.name,

                            )).toList(), onChanged: (e){
                      // print(langages.languages.indexOf(langages.languages.where((element) => element.name==e).first));
                      nativeLanguage=e;
                }),
              )

            ],
          ),
          ...foreignLanguage.map<Widget>((e) =>Container(
            margin: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
              children: [
                Text("foreignLanguage".tr,style: AppTextStyle.style7A7878_20w800,),
                Text(": L ${e.languageLevel?.index} - ${e.language?.name}",style: AppTextStyle.style7A7878_20w800,),


              ],
            ),
          ) ).toList(),
           const SizedBox(height:15,),
           AddLanguageButton(
            onTap:()async{
             var result=await showDialog<ForeignLanguage>(context: context, builder: (_){
                return ForeginLanguageAlertDialog(languages: langages.languages);
              });
             if(result!=null){
               foreignLanguage.add(result);
               setState(() {});
             }
            } ,
          )


        ],
      ),
    );
  }
}
class ForeignLanguage{
  LanguageLevel? languageLevel;
  Language? language;


  ForeignLanguage(this.language, this.languageLevel);
}
enum LanguageLevel{
  beginner,//A0
  elementary,//A1
  preIntermediate,//A2
  intermediate,//B1
  upperIntermediate,//B2
  advanced//C1
}