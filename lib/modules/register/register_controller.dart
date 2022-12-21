import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController {
   RxBool passwordVisibility = true.obs;

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
