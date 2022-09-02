import 'package:flutter/material.dart';

import 'btn_add_item.dart';

class TextFormFieldSkill extends StatelessWidget {
  const TextFormFieldSkill({Key? key, this.controller, this.onTapAdd, this.hintText}) : super(key: key);
final TextEditingController? controller;
final String? hintText;
final VoidCallback? onTapAdd;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: 330,
          child: TextField(
            controller: controller,
            textAlign: TextAlign.start,
            decoration: InputDecoration(
              hintText: hintText??"Write skill here",
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
        ),
        ButtonAddItem(
          onTap:onTapAdd ,
        )
      ],
    );
  }
}
