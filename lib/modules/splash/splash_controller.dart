import 'package:firebase_login_example/modules/login/login_screen.dart';
import 'package:firebase_login_example/routes/routes.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  @override
  void onReady() async {
    super.onReady();
    print("splash açıldı.");
    await Future.delayed(Duration(milliseconds: 3000));
    //Get.toNamed(Routes.HOME, parameters: {'data' : 'Berkay Karanfil'});
    Get.toNamed(Routes.LOGIN);
  }
}
