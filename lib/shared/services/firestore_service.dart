import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_login_example/modules/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FirestoreService extends GetxService {
  Future<FirestoreService> init() async {
    return this;
  }

  //HomeController idList = HomeController();

  addBlog(String topic, String content ) async {
    Map<String, dynamic> kullaniciEkle = <String, dynamic> {};
    kullaniciEkle['topic'] = topic;
    kullaniciEkle['content'] = content;
     await FirebaseFirestore.instance
        .collection('users').add(kullaniciEkle);
       
  }

  /* getDocId()async{
    await FirebaseFirestore.instance.collection('users').get().then((value) => value.docs.forEach((document) {
      print(document.reference);
      idList.docIDs.add(document.reference.id);
    }));
  } */

  readBlog()async{
   var userBlogs = await FirebaseFirestore.instance.collection('users').get();
   //debugPrint(userBlogs.size.toString());
   //debugPrint(userBlogs.docs.length.toString());
  }

}
