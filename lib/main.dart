import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:likpinuz/app/routes/app_pages.dart';


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
        primarySwatch: Colors.green,
      ),
      initialRoute: "/",
      getPages: AppPages.pages,
      debugShowCheckedModeBanner: false,
     // home: const MyHomePage(title: 'LinkPin.Uz'),
    );
  }
}


