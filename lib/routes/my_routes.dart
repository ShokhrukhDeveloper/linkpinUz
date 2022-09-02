import 'package:flutter/material.dart';
import 'package:likpinuz/presentation/pages/login_page/login_page.dart';
import 'package:likpinuz/presentation/pages/signUp/sign_up_page.dart';

class MyRoutes {
  Route? onGenerateRoute(RouteSettings s) {
    switch (s.name) {
      case "/signUp":
        return MaterialPageRoute(builder: (context) => const SignUpPage());
      case "/logIn":
        return MaterialPageRoute(builder: (context) => const LoginPage());
    }
  }
}
