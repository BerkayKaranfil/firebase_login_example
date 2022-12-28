import 'package:firebase_login_example/modules/update_blog/update_blog_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class UpdateBlogScreen extends GetView<UpdateBlogController> {
  const UpdateBlogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
            height: 5.h,
          ),
          TextFormField(
            
            controller: controller.updateTopic,
            decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: "UpdateTopic",
                hintStyle: TextStyle(fontSize: 2.h),
                contentPadding: EdgeInsets.only(bottom: 1.w, left: 5.w),
                enabledBorder: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder()),
          ),
          SizedBox(
            height: 2.h,
          ),
          TextFormField(
            controller: controller.updateContent,
            decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: "UpdateContent",
                hintStyle: TextStyle(fontSize: 2.h),
                contentPadding: EdgeInsets.only(bottom: 1.w, left: 5.w),
                enabledBorder: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder()),
          ),
          ElevatedButton(onPressed: () {
            controller.db.updateBlog(controller.document_id, controller.updateTopic.text, controller.updateContent.text);
            Get.back();
          }, child: Text('Guncelle'))
        ],
      ),
    );
  }
}
