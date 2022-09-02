import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:likpinuz/app/routes/app_pages.dart';
import 'package:likpinuz/app/routes/app_routes.dart';
import 'package:likpinuz/routes/my_routes.dart';
import 'presentation/pages/login_page/widgets/AppSignInButton.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var routess = MyRoutes();
    return GetMaterialApp(
      title: 'LinkPin.Uz',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: AppRoutes.signUp,
      onGenerateRoute: routess.onGenerateRoute,
      debugShowCheckedModeBanner: false,
      getPages: AppPages.pages,
    );
  }
}
