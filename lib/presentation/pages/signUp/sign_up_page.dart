import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  TextEditingController confirmPassController = TextEditingController();

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
                            "Sign Up",
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          //? Text (Do you have an account ? && Log In Now)
                          // dajfahskfhas
                          Row(
                            children: [
                              //? Text (Do you have an account ?)
                              const Text(
                                "Do you have an account?",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 18,
                                ),
                              ),
                              //? Text (Log In Now)
                              TextButton(
                                  onPressed: () {},
                                //? Text (Log In Now)
                                TextButton(
                                    onPressed: () {},
                                    child: const Text(
                                      "Log In Now",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Color(0xff1D71B8)),
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
                            //? Text Editing Confirm password (Confirm password)
                            _textFormField(
                              context: context,
                              controller: emailController,
                              hintText: "Confirm password",
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
                                  onPressed: () {
                                  Get.toNamed(AppRoutes.home);
                                  },
                                  child: const Text(
                                    "Log In Now",
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
                          //? Text Editing Confirm password (Confirm password)
                          _textFormField(
                            context: context,
                            controller: emailController,
                            hintText: "Confirm password",
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
                          //? Continue sites
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
