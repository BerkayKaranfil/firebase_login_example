import 'package:firebase_login_example/modules/blog_create/blog_create_controller.dart';
import 'package:get/get.dart';

class BlogCreateBinding implements Bindings{
  @override
  void dependencies() {
    Get.put(BlogCreateController());
  }
}