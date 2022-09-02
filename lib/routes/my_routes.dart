import 'package:flutter/material.dart';
import 'package:likpinuz/presentation/pages/signUp/sign_up_page.dart';

class MyRoutes {
  Route? onGenerateRoute(RouteSettings s) {
    switch (s.name) {
      case "/signUp":
        return MaterialPageRoute(builder: (context) => const SignUpPage());
    }
  }
}
