import 'package:firebase_login_example/modules/blog_create/blog_create_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class BlogCreateScreen extends GetView<BlogCreateController> {
  const BlogCreateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xffEFEFEF),
      appBar: AppBar(
        title: Text(
          "Post A Blog",
          style: TextStyle(fontSize: 3.h),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5.w),
        child: Column(
          children: [
            SizedBox(
              height: 5.h,
            ),
            TextFormField(
              controller: controller.topic,
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: "Topic",
                  hintStyle: TextStyle(fontSize: 2.h),
                  contentPadding: EdgeInsets.only(bottom: 1.w, left: 5.w),
                  enabledBorder: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder()),
            ),
            SizedBox(
              height: 5.h,
            ),
            TextFormField(
              controller: controller.content,
              maxLines: 20,
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: "Content",
                  hintStyle: TextStyle(fontSize: 2.h),
                  contentPadding: EdgeInsets.only(top: 5.h, left: 5.w),
                  enabledBorder: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder()),
            ),
            SizedBox(
              height: 2.h,
            ),
            ElevatedButton(
                onPressed: () {
                  controller.db.addBlog(controller.topic.text, controller.content.text);
             
                  print(controller.content.text);
                },
                child: Text(
                  "Post",
                  style: TextStyle(fontSize: 3.h),
                ))
          ],
        ),
      ),
    );
  }
}
