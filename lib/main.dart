
import 'package:firebase_login_example/d.dart';
import 'package:firebase_login_example/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await DependencyInjection.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (context, Orientation, ScreenType) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          //home :
          getPages: AppPages.routes,
          initialRoute: Routes.SPLASH,
          enableLog: true,
        );
      },
    );
  }
}
