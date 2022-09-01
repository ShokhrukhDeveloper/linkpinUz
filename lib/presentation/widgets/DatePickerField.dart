
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:likpinuz/app/config/AppTextStyle.dart';
import 'package:likpinuz/app/config/app_colors.dart';
// ignore: must_be_immutable
class CustomDatePickerField extends StatefulWidget {
   CustomDatePickerField({Key? key, this.textAlign, this.contentPadding, required this.hintText}) : super(key: key);
final TextAlign? textAlign;
final EdgeInsetsGeometry? contentPadding;
final String hintText;

  @override
  State<CustomDatePickerField> createState() => _CustomDatePickerFieldState();
}

class _CustomDatePickerFieldState extends State<CustomDatePickerField> {
final dateFomatter=DateFormat("yyyy.MM.dd");

void pickDate(){
  showDatePicker(
      context: context,
      initialEntryMode :DatePickerEntryMode.calendarOnly,
      firstDate: DateTime(DateTime.now().year-50),
      lastDate: DateTime.now(),
      initialDate: DateTime.now());
}

DateTime? startTime;

DateTime? endTime;
bool untilNow=false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Checkbox(value: untilNow, onChanged: (e){
              untilNow=!untilNow;
              setState(() {});
            },),
            Text("untilNow".tr)
          ],
        ),
        Container(
          height: 50,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            border:   Border.all(color: AppColor.black)
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                  onTap: ()async{
                    var date=await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(DateTime.now().year-50),
                        lastDate: DateTime.now());
                    if(date!=null) {
                      startTime=date;
                      setState(() {

                      });
                    }
                  },
                  child: Text(startTime!=null?dateFomatter.format(startTime!):'startTime'.tr)),
              if(!untilNow)const Icon(Icons.arrow_forward),
              if(!untilNow)InkWell(
                  onTap: ()async{
                    var date=await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(DateTime.now().year-50),
                        lastDate: DateTime.now());
                    if(date!=null) {
                      endTime=date;
                      setState(() {

                      });
                    }
                  },
                  child:Text(endTime!=null?dateFomatter.format(endTime!):'endTime'.tr)),
            ],
          ),
        ),
      ],
    );
  }
}
