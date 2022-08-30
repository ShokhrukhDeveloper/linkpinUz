import 'package:flutter/material.dart';
import 'package:likpinuz/app/config/app_colors.dart';
class CustomTextField extends StatelessWidget {
   const CustomTextField({
     Key? key,
     required this.controller,
     required this.onChange,
     required this.onSubmit,
     required this.hintText,
     required this.fieldText}) : super(key: key);
  final TextEditingController controller;
  final Function(String onChange) onChange;
  final Function() onSubmit;
  final String hintText;
  final String fieldText;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 350,
      child: Column(
        children: [
           Align(
             alignment: Alignment.centerLeft,
             child: Text(fieldText,
              style: const TextStyle(
                color: AppColor.colorTextField,
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
              ),
             textAlign: TextAlign.left,
             ),
           ),
          TextField(
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
            ),
          ),
        ],
      ),
    );
  }
}
