import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../app/config/AppTextStyle.dart';
import '../../../../app/config/app_colors.dart';
import '../../../widgets/btn_add_item.dart';
import 'EducationDialog.dart';

class EducationWidget extends StatefulWidget {
  const EducationWidget({Key? key}) : super(key: key);

  @override
  State<EducationWidget> createState() => _EducationWidgetState();
}

class _EducationWidgetState extends State<EducationWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 410,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Education:',
            style: AppTextStyle.style7A7878_20w800,
          ),
          const SizedBox(height: 7,),
          Container(
            margin: const EdgeInsets.only(left: 10),
            padding: const EdgeInsets.all(24),
            width: 400,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(27),
              color: AppColor.colorD9D9D9,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [

                // if(widget.where!=null)
                  Text("${'Name'.tr}:",
                    style: AppTextStyle.styleBlack16W600
                ),
                // if(widget.where!=null)
                  LimitedBox(
                  maxWidth: 350,
                  child: Text('To completely skip the formatting issues, use a professional resume template.',
                    style: AppTextStyle.styleBlack15W300,
                  ),
                ),
                // if(widget.position!=null)
                  Text("${'Years:'.tr}:",
                    style: AppTextStyle.styleBlack16W600
                ),
                // if(widget.position!=null)
                  LimitedBox(
                  maxWidth: 350,
                  child: Text('2020.02.03 - 2021.02.03',
                    style: AppTextStyle.styleBlack15W300,
                  ),
                ),
                // if(widget.description!=null)
                  Text("${'Field'.tr}:",
                    style: AppTextStyle.styleBlack16W600
                ),
                // if(widget.description!=null)
                  LimitedBox(
                  maxWidth: 350,
                  child: Text('Ingneer programmmer',
                    style: AppTextStyle.styleBlack15W300,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 8,),


          Center(child: ButtonAddItem(onTap: (){
            showDialog(context: context, builder: (_){
              return  const EducationDialogWidget() ;
            });
          },)),

        ],
      ),
    );
  }
}
