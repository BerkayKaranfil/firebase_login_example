import 'package:firebase_login_example/modules/update_blog/update_blog_controller.dart';
import 'package:get/get.dart';

class UpdateBlogBinding implements Bindings{
  @override
  void dependencies() {
    Get.put(UpdateBlogController());
  }

}