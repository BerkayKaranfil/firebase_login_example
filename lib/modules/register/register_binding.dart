import 'package:firebase_login_example/modules/register/register_controller.dart';
import 'package:get/get.dart';

class RegisterBinding implements Bindings{
  @override
  void dependencies() {
    Get.put(RegisterController());
  }
}