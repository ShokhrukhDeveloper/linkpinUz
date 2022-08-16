import 'package:get/get.dart';
import 'package:likpinuz/presentation/controller/auth_controller.dart';

class AuthBinding implements Bindings
{
  @override
  void dependencies() {
    Get.lazyPut<AuthController>(() => AuthController());
  }
}