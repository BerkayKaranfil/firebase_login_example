import 'package:firebase_login_example/modules/blog/blog_binding.dart';
import 'package:firebase_login_example/modules/blog/blog_screen.dart';
import 'package:firebase_login_example/modules/blog_create/blog_create_binding.dart';
import 'package:firebase_login_example/modules/blog_create/blog_create_screen.dart';
import 'package:firebase_login_example/modules/home/home_binding.dart';
import 'package:firebase_login_example/modules/home/home_screen.dart';
import 'package:firebase_login_example/modules/login/login_binding.dart';
import 'package:firebase_login_example/modules/login/login_screen.dart';
import 'package:firebase_login_example/modules/register/register_binding.dart';
import 'package:firebase_login_example/modules/register/register_screen.dart';
import 'package:firebase_login_example/modules/update_blog/update_blog_binding.dart';
import 'package:firebase_login_example/modules/update_blog/update_blog_screen.dart';
import 'package:get/get.dart';

import '../modules/splash/splash_binding.dart';
import '../modules/splash/splash_screen.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.LOGIN;
  //static const INITIAL_SPLASH = Routes.Splash;

  static final routes = [
    GetPage(
      name: Routes.LOGIN,
      page: () => LoginPage(),
      binding: LoginBinding(),
    ),
    GetPage(
        name: Routes.SPLASH,
        page: () => SplashScreen(),
        binding: SplashBinding()),
    GetPage(
        name: Routes.REGISTER,
        page: () => RegisterScreen(),
        binding: RegisterBinding()),
    GetPage(
        name: Routes.HOME,
        page: () => HomeScreen(),
        binding: HomeBinding()),
    GetPage(
        name: Routes.BLOGCREATE,
        page: () => BlogCreateScreen(),
        binding: BlogCreateBinding()),
    GetPage(
        name: Routes.BLOG,
        page: () => BlogScreen(),
        binding: BlogBinding()),
    GetPage(
        name: Routes.BLOGUPDATE,
        page: () => UpdateBlogScreen(),
        binding: UpdateBlogBinding()),
  ];
}
