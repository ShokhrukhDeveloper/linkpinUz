import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:likpinuz/app/config/AppTextStyle.dart';
import 'package:likpinuz/app/config/app_colors.dart';
import 'package:likpinuz/presentation/pages/profile_page/widgets/working_experience_dialog.dart';

import '../../../widgets/btn_add_item.dart';
class WorkingExperienceWidget extends StatefulWidget {
  const WorkingExperienceWidget({Key? key, this.where, this.position, this.description, this.date, this.name}) : super(key: key);
  final String? name;
  final String? date;
  final String? where;
  final String? position;
  final String? description;

  @override
  State<WorkingExperienceWidget> createState() => _WorkingExperienceWidgetState();
}

class _WorkingExperienceWidgetState extends State<WorkingExperienceWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 410,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(widget.name??'',
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          if(widget.date!=null)Text(widget.date??'',style: AppTextStyle.styleBlack16W800,)
                        ],
                      ),
                    if(widget.where!=null)Text("${'where'.tr}:",
                    style: AppTextStyle.styleBlack16W600
                    ),
                    if(widget.where!=null) LimitedBox(
                      maxWidth: 350,
                      child: Text(widget.where??'',
                      style: AppTextStyle.styleBlack15W300,
                      ),
                    ),
                    if(widget.position!=null)Text("${'position'.tr}:",
                        style: AppTextStyle.styleBlack16W600
                    ),
                    if(widget.position!=null)LimitedBox(
                      maxWidth: 350,
                      child: Text(widget.position??'',
                        style: AppTextStyle.styleBlack15W300,
                      ),
                    ),
                   if(widget.description!=null) Text("${'description'.tr}:",
                        style: AppTextStyle.styleBlack16W600
                    ),
                    if(widget.description!=null) LimitedBox(
                      maxWidth: 350,
                      child: Text(widget.description??'',
                        style: AppTextStyle.styleBlack15W300,
                      ),
                    ),
                  ],
                ),
          ),
          const SizedBox(height: 8,),


              Center(child: ButtonAddItem(onTap: (){
                showDialog(context: context, builder: (_){
                return  WorkingExperienceAlertDialog() ;
                });
              },)),

        ],
      ),
    );
  }
}
