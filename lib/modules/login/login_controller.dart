import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController{
  var loginpasswordVisibility = true.obs;

  loginPasswordVisibility(){
    loginpasswordVisibility.value = !loginpasswordVisibility.value;
  }

  loginVisibilityIcon(){
    if (loginpasswordVisibility == false) {
      return Icons.visibility;
    } else {
      return Icons.visibility_off;
    }
  }
}