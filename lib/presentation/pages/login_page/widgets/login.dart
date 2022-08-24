import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:likpinuz/presentation/pages/login_page/widgets/AppSignInButton.dart';
class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

    var passwordVisible=false;
    @override
    Widget build(BuildContext context) {
      return Container(
        padding: const EdgeInsets.all(15),
        height: 550,
        width: 550,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(60),
            color: const Color(0xffF0ECEC)
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            SvgPicture.asset("assets/svg_icons/ic_app.svg"),

            const Text("1brokhim's here!",
              style: TextStyle(
                color: Colors.black,
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
              ),
            ),const SizedBox(height: 40,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Elektron pochta",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 14
                  ),),
                const SizedBox(height: 5,),
                SizedBox(
                  width: 350,
                  child: TextFormField(

                    decoration: InputDecoration(
                      hintText: "example@example.com",
                      hintStyle: const TextStyle(fontSize: 15),
                      suffixIcon:const Icon(Icons.alternate_email_rounded),
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
              ],
            ),
            const SizedBox(height: 25,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Parolingiz",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 14
                  ),),
                const SizedBox(height: 5,),
                SizedBox(
                  width: 350,
                  child: TextFormField(
                    obscureText: passwordVisible,
                    decoration: InputDecoration(
                      hintText: "password",
                      hintStyle: const TextStyle(fontSize: 15),
                      suffixIcon:InkWell(child: passwordVisible?const Icon(Icons.visibility_off): const Icon(Icons.visibility),
                        onTap: (){
                          passwordVisible=!passwordVisible;
                          setState(() {
                          });
                        },
                      ),
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
              ],
            ),
            const SizedBox(height: 25,),
            SignInButton()




          ],
        ),
      );
    }
  }
