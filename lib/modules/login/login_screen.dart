import 'package:firebase_login_example/modules/login/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class LoginPage extends GetView<LoginController> {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Container(
          height: 65.h,
        width: 85.w,
        //  height: 85.h,
         // width: 85.w,
          decoration: BoxDecoration(
              color: Colors.blue.withOpacity(0.5),
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    blurRadius: 10,
                    spreadRadius: 2)
              ]),
          child: Padding(
            padding: EdgeInsets.all(5.w),
            child: Column(
              children: [
                SizedBox(
                  height: 2.h,
                ),
                TextFormField(
                  textAlignVertical: TextAlignVertical.center,
                  decoration: InputDecoration(
                      //enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white)),
                      prefixIcon: Icon(
                        Icons.person,
                        color: Colors.white,
                      ),
                      hintText: "Name",
                      hintStyle: TextStyle(color: Colors.white)),
                ),
                SizedBox(
                  height: 3.h,
                ),
                TextFormField(
                  textAlignVertical: TextAlignVertical.center,
                  decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white)),
                      prefixIcon: Icon(
                        Icons.email,
                        color: Colors.white,
                      ),
                      hintText: "Email",
                      hintStyle: TextStyle(color: Colors.white)),
                ),
                SizedBox(
                  height: 3.h,
                ),
                TextFormField(
                  textAlignVertical: TextAlignVertical.center,
                  decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white)),
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Colors.white,
                      ),
                      hintText: "Password",
                      hintStyle: TextStyle(color: Colors.white)),
                ),
                SizedBox(
                  height: 13.h,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text("Login",style: TextStyle(fontSize: 2.h),),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                      minimumSize: Size(60.w, 5.h),
                      backgroundColor: Colors.greenAccent.withOpacity(0.5),
                      
                      side: BorderSide(color: Colors.white, width: 0.5.w,style: BorderStyle.none)),
                ),
                SizedBox(
                  height: 3.h,
                ),
                /* ElevatedButton(
                    onPressed: () {},
                    child: Text("Register"),
                    style: ElevatedButton.styleFrom(
                        minimumSize: Size(40.w, 5.h),
                        backgroundColor: Colors.blueGrey.withOpacity(0.5),
                        side: BorderSide(color: Colors.white, width: 0.5.w))), */
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account?", style: TextStyle(fontSize: 2.h),),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          "Register",
                          style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold, fontSize: 2.5.h, decoration: TextDecoration.underline, decorationStyle: TextDecorationStyle.solid),
                        ))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
