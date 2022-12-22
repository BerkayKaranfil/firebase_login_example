import 'package:firebase_login_example/shared/services/auth_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController {
   RxBool passwordVisibility = true.obs;
   AuthService auth = AuthService();
   String? userEmail;
   String? userPassword;
   TextEditingController emailControl = TextEditingController();
   TextEditingController passwordControl = TextEditingController();

  void chancePasswordVisibility() {
    passwordVisibility.value = !passwordVisibility.value;
  }

  chanceVisibilityIcon() {
    if (passwordVisibility == false) {
      return Icons.visibility;
    } else {
      return Icons.visibility_off;
    }
  } 
}
