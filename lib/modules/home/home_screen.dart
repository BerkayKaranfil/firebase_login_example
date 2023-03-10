import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_login_example/modules/home/home_controller.dart';
import 'package:firebase_login_example/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xffEFEFEF),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5.w),
        child: Column(
          children: [
            SizedBox(
              height: 5.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: SizedBox(
                    height: 3.h,
                    width: 6.w,
                    child: Image.asset(
                      "assets/menu.png",
                      color: Color(0xff181717),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: SizedBox(
                    height: 3.h,
                    width: 6.w,
                    child: Image.asset(
                      "assets/firenotification.png",
                      color: Color(0xff181717),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 2.h,
            ),
            Container(
              height: 6.h,
              child: TextFormField(
                //textAlignVertical: TextAlignVertical.center,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: "Source",
                    hintStyle: TextStyle(fontSize: 2.h),
                    contentPadding: EdgeInsets.only(bottom: 1.w, left: 5.w),
                    enabledBorder: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder()),
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
            SizedBox(
                height: 75.h,
                child: StreamBuilder(
                  stream: controller.db.readBlog(),
                  builder: (context, snapshot) {
                    return !snapshot.hasData
                        ? CircularProgressIndicator()
                        : ListView.builder(
                            itemCount: snapshot.data!.docs.length,
                            itemBuilder: (context, index) {
                              DocumentSnapshot myBlog =
                                  snapshot.data!.docs[index];
                              return Container(
                                margin: EdgeInsets.only(bottom: 3.h),
                                height: 30.h,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20)),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                          left: 4.w, top: 2.h, right: 6.w),
                                      child: Column(
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            children: [
                                              Text(
                                                "${myBlog["topic"]}",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 2.h),
                                              ),
                                              GestureDetector(
                                                onTap: () {
                                                  controller.db.deleteBlog(
                                                      snapshot.data!.docs[index]
                                                          .id);
                                                },
                                                child: Container(
                                                  height: 2.h,
                                                  width: 5.w,
                                                  decoration: BoxDecoration(),
                                                  child: Text(
                                                    "Sil",
                                                    style: TextStyle(
                                                        color: Colors.red),
                                                  ),
                                                ),
                                              ),
                                              GestureDetector(
                                                onTap: () {
                                                  //   controller.document_id = snapshot.data!.docs[index].id;
                                                  // print(controller.document_id);
                                                  controller
                                                          .updateBlogController
                                                          .document_id =
                                                      snapshot
                                                          .data!.docs[index].id;
                                                  // print(controller.updateBlogController.document_id);
                                                  Get.toNamed(
                                                      Routes.BLOGUPDATE);
                                                },
                                                child: Container(
                                                  height: 2.h,
                                                  width: 14.w,
                                                  decoration: BoxDecoration(),
                                                  child: Text(
                                                    "G??ncelle",
                                                    style: TextStyle(
                                                        color: Colors.green),
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                          SizedBox(
                                            height: 1.h,
                                          ),
                                          Row(
                                            children: [
                                              CircleAvatar(
                                                radius: 3.5.h,
                                                child: Image.network("https://muhiku.com/wp-content/uploads/2021/04/bardak-altligi-3.jpg"),
                                              ),
                                              SizedBox(
                                                width: 2.w,
                                              ),
                                              Text("Kullan??c??n??n ismi"),
                                              SizedBox(
                                                width: 10.w,
                                              ),
                                              Text("Jul 29, 2022"),
                                            ],
                                          ),
                                          Divider(
                                            thickness: 0.5.w,
                                            color: Color(0xffC8C8C8),
                                          ),
                                          SizedBox(
                                            height: 0.5.h,
                                          ),
                                          Container(
                                            height: 7.h,
                                            child: Text("${myBlog["content"]}"),
                                          ),
                                          SizedBox(
                                            height: 2.h,
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(
                                          right: 4.w, left: 4.w),
                                      height: 5.h,
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                          color: Color(0xff181717),
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      child: Center(
                                        child: Text(
                                          "Read More",
                                          //textAlign: TextAlign.center,
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              );
                            },
                          );
                  },
                )
                /* ListView.builder(
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(bottom: 3.h),
                    height: 30.h,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      children: [
                        Padding(
                          padding:
                              EdgeInsets.only(left: 4.w, top: 2.h, right: 6.w),
                          child: Column(
                            children: [
                              Text(
                                "Please Start Writing Better Git Commits",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600, fontSize: 2.h),
                              ),
                              SizedBox(
                                height: 1.h,
                              ),
                              Row(
                                children: [
                                  CircleAvatar(
                                    radius: 2.h,
                                  ),
                                  SizedBox(
                                    width: 2.w,
                                  ),
                                  Text("Kullan??c??n??n ismi"),
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  Text("Jul 29, 2022"),
                                ],
                              ),
                              Divider(
                                thickness: 0.5.w,
                                color: Color(0xffC8C8C8),
                              ),
                              SizedBox(
                                height: 0.5.h,
                              ),
                              Container(
                                height: 10.h,
                                child: Text(
                                    "Buraya kullan??c??n??n yazd?????? yaz?? gelecek.Buraya kullan??c??n??n yazd?????? yaz?? gelecek.Buraya kullan??c??n??n yazd?????? yaz?? gelecek.Buraya kullan??c??n??n yazd?????? yaz?? gelecek.Buraya kullan??c??n??n yazd?????? yaz?? gelecek.Buraya kullan??c??n??n yazd?????? yaz?? gelecek."),
                              ),
                              SizedBox(
                                height: 2.h,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 4.w, left: 4.w),
                          height: 5.h,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Color(0xff181717),
                              borderRadius: BorderRadius.circular(5)),
                          child: Center(
                            child: Text(
                              "Read More",
                              //textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        )
                      ],
                    ),
                  );
                },
              ), */
                ),
            /* FloatingActionButton(
              onPressed: () {
                Get.toNamed(Routes.BLOGCREATE);
              },
              child: Icon(Icons.add),
            ), */
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.w)
        ),
        onPressed: () {
          Get.toNamed(Routes.BLOGCREATE);
        },
        child: Icon(Icons.add),
      ),
      bottomNavigationBar: Obx(()=>BottomNavigationBar(
       
      currentIndex: controller.bottomSelectedIndex.value,
      onTap: (index) {
        controller.changedSelectedIndex(index);
      },
      selectedItemColor: controller.changedColor(),
        items: [
        BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        BottomNavigationBarItem(icon: Icon(Icons.save), label: "Records")
      ]),)
      
    );
  }
}
