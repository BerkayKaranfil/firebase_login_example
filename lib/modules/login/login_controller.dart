import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../shared/services/auth_service.dart';

class LoginController extends GetxController {
  var loginpasswordVisibility = true.obs;
  AuthService auth = AuthService();
  TextEditingController emailControl = TextEditingController();
  TextEditingController passwordControl = TextEditingController();

  loginPasswordVisibility() {
    loginpasswordVisibility.value = !loginpasswordVisibility.value;
  }

  loginVisibilityIcon() {
    if (loginpasswordVisibility == false) {
      return Icons.visibility;
    } else {
      return Icons.visibility_off;
    }
  }
}
