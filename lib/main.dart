import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import 'presentation/widgets/AppSignInButton.dart';
import 'presentation/widgets/app_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'LinkPin.Uz',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'LinkPin.Uz'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
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
                              width: 168,
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
             child: AuthWidgetContainer(),
             alignment: Alignment.center,
           )
          ],
        ));
  }
}class AuthWidgetContainer extends StatefulWidget {
  const AuthWidgetContainer({Key? key}) : super(key: key);

  @override
  State<AuthWidgetContainer> createState() => _AuthWidgetContainerState();
}

class _AuthWidgetContainerState extends State<AuthWidgetContainer> {
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

          const Text("Welcome to LinkPin!",
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


