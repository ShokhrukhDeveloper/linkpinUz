import 'package:flutter/material.dart';

class SignInButton extends StatelessWidget {
  const SignInButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 48,
      width: 148,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient:const LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [
                Color(0xff2D2A35),
                Color(0xff8E8E8E),
              ])
      ),
      child: const Center(
        child: Text("Kirish",
          textScaleFactor: 1,
          style: TextStyle(
              letterSpacing: 3,
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: Colors.white
          ),
        ),
      ),
    );
  }
}
