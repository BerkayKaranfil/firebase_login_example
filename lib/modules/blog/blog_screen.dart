import 'package:firebase_login_example/modules/blog/blog_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class BlogScreen extends GetView<BlogController> {
  const BlogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5.w),
        child: Column(
          children: [
            SizedBox(
              height: 5.h,
            ),
            Text("Burada seçilen blogun başligi yazacak."),
            Divider(
              thickness: 0.5.w,
            ),
            Container(
              height: 70.h,
              width: double.infinity,
              child: Text("Burada seçilen bloğun içeriği yazacak")),
          ],
        ),
      ),
    );
  }
}
