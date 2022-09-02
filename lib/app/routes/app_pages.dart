import 'package:get/get.dart';
import 'package:likpinuz/app/routes/app_routes.dart';
import 'package:likpinuz/presentation/bindings/auth_binding.dart';
import 'package:likpinuz/presentation/pages/login_page/login_page.dart';
import 'package:likpinuz/presentation/pages/signUp/sign_up_page.dart';
import '../../presentation/pages/home/home_page.dart';

class AppPages
{
  static  List<GetPage> pages=[
    GetPage(
        name: "/",
        page:()=>const AuthPage(),
        binding: AuthBinding()),
    GetPage(
        name: AppRoutes.home,
        page:()=> HomePage(),
        // binding: AuthBinding()
    ),
    GetPage(
        name: AppRoutes.signUp,
        page:()=> const SignUpPage(),
        // binding: AuthBinding()
    ),
  ];
}