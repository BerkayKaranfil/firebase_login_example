import 'package:firebase_login_example/shared/services/firestore_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../shared/services/analytics_service.dart';

class BlogCreateController extends GetxController{
  TextEditingController topic = TextEditingController();
  TextEditingController content = TextEditingController();
  FirestoreService db = FirestoreService();

  AnalyticsService analyticsService = Get.find();
}