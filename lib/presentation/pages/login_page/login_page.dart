import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(0xfff5f5f7),
        child: Row(
          children: [
            //? SignUp Qismi
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.65,
                    width: MediaQuery.of(context).size.height * 0.60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xffffffff),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //? Text (Sign Up)
                          const Text(
                            "Log In",
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          //? Text (Still don’t have an account? ? && Sign Up Now)
                          Row(
                            children: [
                              //? Text (Still don’t have an account?)
                              const Text(
                                "Still don’t have an account?",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 18,
                                ),
                              ),
                              //? Text (Sign Up Now)
                              TextButton(
                                  onPressed: () {},
                                  child: const Text(
                                    "Sign Up Now",
                                    style: TextStyle(
                                        fontSize: 20, color: Color(0xff1D71B8)),
                                  ))
                            ],
                          ),
                          //? Text Editing Controller (Email)
                          _textFormField(
                            context: context,
                            controller: emailController,
                            hintText: "Email",
                          ),
                          //? Text Editing Password (Password)
                          _textFormField(
                            context: context,
                            controller: emailController,
                            hintText: "Password",
                          ),
                          //? Eleveted Button (Continue)
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: const Color(0xff1D71B8),
                                  fixedSize: const Size(134, 44),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                onPressed: () {},
                                child: const Text(
                                  "Continue",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),
                                ),
                              )
                            ],
                          ),
                          const Divider(color: Colors.grey),
                          //? Text (Or continue with)
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                "Or continue with",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                          //? Sites (apple,facebook,github,google)
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 20,
                                width: 20,
                                child: SvgPicture.asset(
                                  "assets/svg_icons/ic_facebook.svg",
                                ),
                              ),
                              const SizedBox(width: 20),
                              SizedBox(
                                height: 20,
                                width: 20,
                                child: SvgPicture.asset(
                                  "assets/svg_icons/ic_github.svg",
                                ),
                              ),
                              const SizedBox(width: 20),
                              SizedBox(
                                height: 20,
                                width: 20,
                                child: SvgPicture.asset(
                                  "assets/svg_icons/google-play-store-icon.svg",
                                ),
                              ),
                              const SizedBox(width: 20),
                              SizedBox(
                                height: 20,
                                width: 20,
                                child: SvgPicture.asset(
                                  "assets/svg_icons/apple-icon.svg",
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //? Image qismi
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      "png_pictures/signUpBack.png",
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  SizedBox _textFormField({
    BuildContext? context,
    TextEditingController? controller,
    String? hintText,
  }) {
    return SizedBox(
      height: 54,
      width: MediaQuery.of(context!).size.width,
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: const TextStyle(
            color: Color(0xffCDCDCD),
          ),
          border: OutlineInputBorder(
            borderSide: const BorderSide(color: Color(0xffCDCDCD)),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
