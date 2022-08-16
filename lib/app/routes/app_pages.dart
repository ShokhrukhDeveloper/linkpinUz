import 'package:get/get.dart';
import 'package:likpinuz/presentation/bindings/auth_binding.dart';
import 'package:likpinuz/presentation/pages/login_page/login_page.dart';

class AppPages
{
  static  List<GetPage> pages=[
    GetPage(
        name: "/",
        page:()=>const AuthPage(),
        binding: AuthBinding()

    )
  ];
}