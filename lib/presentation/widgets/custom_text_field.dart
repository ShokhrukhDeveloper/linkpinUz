import 'package:flutter/material.dart';
import 'package:likpinuz/app/config/AppTextStyle.dart';
class CustomTextField extends StatelessWidget {
   const CustomTextField({
     Key? key,
      this.controller,
      this.onChange,
      this.onSubmit,
      this.hintText,
      this.fieldText,
     this.contentPadding, this.textAlign, this.maxLines}) : super(key: key);
  final TextEditingController? controller;
  final Function(String onChange)? onChange;
  final Function()? onSubmit;
  final String? hintText;
  final String? fieldText;
  final  EdgeInsetsGeometry? contentPadding;
  final TextAlign? textAlign;
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400,
      child: Column(
        children: [
           Align(
             alignment: Alignment.centerLeft,
             child: Text(fieldText??'',
              style:AppTextStyle.style7A7878_20w800,
             textAlign: TextAlign.left,
             ),
           ),
          TextField(
            maxLines: maxLines,
            textAlign: textAlign??TextAlign.start,
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: const TextStyle(fontSize: 15),

              disabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16.0),
                borderSide: const BorderSide(color: Colors.black, width: 2.0),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16.0),
                borderSide: const BorderSide(color: Colors.black, width: 2.0),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16.0),
                borderSide: const BorderSide(
                    color: Colors.black,
                    width: 1.0),
              ),
              contentPadding: contentPadding,

            ),
          ),
        ],
      ),
    );
  }
}
