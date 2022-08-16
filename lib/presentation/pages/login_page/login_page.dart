import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:likpinuz/presentation/controller/auth_controller.dart';
import 'package:likpinuz/presentation/pages/login_page/widgets/AppSignInButton.dart';
import 'package:likpinuz/presentation/pages/login_page/widgets/login.dart';
class AuthPage extends StatelessWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return GetBuilder<AuthController>(
       builder: (context) {
         return Scaffold(

            body: Stack(
              children: [
                Container(
                  color: Colors.white54,
                  height: 76,
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                          padding: const EdgeInsets.only(top: 6, left: 12),
                          child:
                          SvgPicture.asset("assets/svg_icons/ic_app.svg")),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          const Center(child: SignInButton()),
                          const SizedBox(
                            width: 15,
                          ),

                          Center(
                            child: Container(
                              height: 48,
                              width: 150,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: Colors.black, width: 2),
                              ),
                              child: const Center(
                                child: Text(
                                  "Ro‘yxatdan o‘tish",
                                  textScaleFactor: 1,
                                  style: TextStyle(
                                      letterSpacing: 1,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black),
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),

                const Align(
                  child: Login(),
                  alignment: Alignment.center,
                )
              ],
            ));
       }
     );
  }
}
