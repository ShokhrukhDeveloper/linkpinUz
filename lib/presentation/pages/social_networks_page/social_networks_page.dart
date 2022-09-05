import 'package:flutter/material.dart';
import 'package:likpinuz/app/config/AppTextStyle.dart';
import 'package:likpinuz/app/config/app_colors.dart';
import 'package:likpinuz/presentation/pages/social_networks_page/widgets/colors_picker_button.dart';
import 'package:likpinuz/presentation/widgets/CustomButton.dart';
import 'package:likpinuz/presentation/widgets/btn_add_item.dart';
import 'package:likpinuz/presentation/widgets/custom_text_field.dart';
import '../../widgets/ColorPickerAlertDialog.dart';
import '../../widgets/IconPickerW/IconPickerAlertDialog.dart';
import '../../widgets/SocialNetworkLinkWidget.dart';
import '../../widgets/removie_button.dart';
class SocialNetworksPage extends StatefulWidget {
   SocialNetworksPage({Key? key}) : super(key: key);

  @override
  State<SocialNetworksPage> createState() => _SocialNetworksPageState();
}
class Link{
  String? name;
  int? colorCode;
  String link='';
  String iconAsset='';


}
class _SocialNetworksPageState extends State<SocialNetworksPage> {
List<Link?> ls=[];
Link? likn=Link();
Future<void> colorPick()async{

    var result=await  showDialog(context: context, builder: (_)=>ColorPickerWidget());
    if(result !=null)
    {
      likn?.colorCode=result;
      color=Color(result);
      setState(() {

      });
    }
}
Future<void> iconPick()async{

  var result=await showDialog(context: context, builder: (_)=>IconPikerAlertDialogWidget());
  if(result!=null)
  {
    likn?.iconAsset=result;
    asset=result;
    debugPrint(asset);
    setState(() {

    });
  }
}

final TextEditingController controller=TextEditingController();
Color? color;
String? asset;
  @override
  Widget build(BuildContext context) {
    return Container(padding: const EdgeInsets.only(top: 40),
      width: double.infinity,
      height: double.infinity,
      color: Colors.white,
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            children:  [

              ...ls.map<Widget>((e) =>Stack(
                children: [
                  SocialNetworkLinkWidget(name: e?.name??'',link: e?.link??'',colorCode: e?.colorCode,asset: e?.iconAsset,),
                  Positioned(
                    right: 5,
                    bottom: 3,
                    child: ButtonRemovie(onTap: (){},color: AppColor.red,))

                ],
              ),).toList(),

              const SizedBox(height: 35,),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 17,horizontal: 38),
                width: 660,
                decoration: BoxDecoration(
                  // color: color,
                  border: Border.all(color: AppColor.black),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  children: [
                    const Text("Add social network",
                      style:AppTextStyle.style7A7878_20w800,
                      textAlign: TextAlign.left,
                    ),
                     CustomTextField(
                      controller: controller,
                      width: 550,
                      fieldText: "Social network name",
                      hintText: "Github/developer ",

                    ),
                    const SizedBox(width: 10,),
                    const CustomTextField(
                      width: 550,
                      fieldText: "Social network address",
                      hintText: "Github/developer ",

                    ),
                    const SizedBox(height: 15,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        Row(
                          children: [
                            const SizedBox(width: 10,),
                            ///Icons Button
                            ButtonAddItem(
                              height: 60,
                              width: 60,
                              asset: asset,
                              onTap: iconPick,
                            ),
                            const SizedBox(width: 30,),
                            /// Color Picker buttons
                            if(color==null)ButtonColorPickerWidget(onTap: colorPick),
                            if(color!=null)InkWell(
                              onTap: colorPick,
                              child: Container(
                                width: 47,height: 47,
                                decoration: BoxDecoration(color: color,borderRadius: BorderRadius.circular(24)),),
                            )
                          ],
                          mainAxisAlignment: MainAxisAlignment.start,
                        ),
                        CustomButton(text: "Create",
                        onTap: (){
                          debugPrint(controller.text+"============");

                          if(controller.text.length>2){
                            debugPrint(controller.text);
                            likn?.name=controller.text;
                            ls.add(likn);
                            debugPrint(controller.text+"============");
                            debugPrint(controller.text+"============");
                            setState(() {});
                            asset=null;
                            color=null;

                           var d=Link();
                           likn=d;
                          }
                        },
                        ),
                      ],
                    ),

                     const SizedBox(height: 10,),
                  ],
                ),
              ),
              const SizedBox(height: 100,),



            ],
          ),
        ),
      ),

    );
  }
}
