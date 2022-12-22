import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../modules/login/login_screen.dart';

class AuthService extends GetxService {
  Future<AuthService> init() async {
    // createUser();
    return this;
  }

  createUser(girilenEmail, girilenPassword) async {
    try {
      final credential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
            email: girilenEmail,
            password: girilenPassword,
          )
          .whenComplete(() => Get.defaultDialog(
                  title: "Kullanıcı oluşturuldu.",
                  confirm: ElevatedButton(
                      onPressed: () {
                        Get.to(() => LoginPage(),
                            transition: Transition.rightToLeftWithFade);
                      },
                      child: Text("Giriş yap")))
              //Get.snackbar("Başarılı", "Kullanıcı oluşturuldu.")
              );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        // print('The password provided is too weak.');
        return Get.defaultDialog(title: "The password provided is too weak.");
      } else if (e.code == 'email-already-in-use') {
       // print('The account already exists for that email.');
        return Get.defaultDialog(
            title: "The account already exists for that email.");
      }
    } catch (e) {
      print(e);
    }
  }


  signInUser(girilenEmail, girilenPassword) async {
    try {
      final credential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(
            email: girilenEmail,
            password: girilenPassword,
          ); // aşağıdaki kodu geri getirmek istiyorsan bu ;'ü sil.***
          /* .whenComplete(() => Get.defaultDialog(
                  title: "Kullanıcı oluşturuldu.",
                  confirm: ElevatedButton(
                      onPressed: () {
                        Get.to(() => LoginPage(),
                            transition: Transition.rightToLeftWithFade);
                      },
                      child: Text("Giriş yap")))
              //Get.snackbar("Başarılı", "Kullanıcı oluşturuldu.")
              ); */
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        // print('The password provided is too weak.');
        return Get.defaultDialog(title: "The password provided is too weak.");
      } else if (e.code == 'email-already-in-use') {
       // print('The account already exists for that email.');
        return Get.defaultDialog(
            title: "The account already exists for that email.");
      }
    } catch (e) {
      print(e);
    }
  }

 
}
