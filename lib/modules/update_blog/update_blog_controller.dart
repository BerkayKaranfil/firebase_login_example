import 'package:firebase_login_example/shared/services/firestore_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class UpdateBlogController extends GetxController{
  FirestoreService db = FirestoreService();
  TextEditingController updateTopic = TextEditingController();
  TextEditingController updateContent = TextEditingController();

  String document_id = "";

}