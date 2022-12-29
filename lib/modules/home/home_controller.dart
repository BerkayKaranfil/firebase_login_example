import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_login_example/modules/update_blog/update_blog_controller.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../shared/services/firestore_service.dart';

class HomeController extends GetxController{
 // List<String> docIDs = []; 
  FirestoreService db = FirestoreService();
 // String document_id = "";
  UpdateBlogController updateBlogController = Get.put(UpdateBlogController());

  
  
  
  
  // Bottom navigation barda herhangi bir işlev yok, denemek için yaptım. 
  RxInt bottomSelectedIndex = 0.obs;

  changedSelectedIndex(index){
    bottomSelectedIndex.value = index;
    
  }

  changedColor(){
    if (bottomSelectedIndex.value == 0) {
    return  Colors.blue;
    } else {
    return  Colors.red;
    }
  }
  
}