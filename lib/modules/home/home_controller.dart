import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_login_example/modules/update_blog/update_blog_controller.dart';

import 'package:get/get.dart';

import '../../shared/services/firestore_service.dart';

class HomeController extends GetxController{
 // List<String> docIDs = []; 
  FirestoreService db = FirestoreService();
 // String document_id = "";
  UpdateBlogController updateBlogController = Get.put(UpdateBlogController());

  
  
}