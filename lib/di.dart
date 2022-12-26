import 'package:firebase_login_example/shared/services/auth_service.dart';
import 'package:firebase_login_example/shared/services/firebase_service.dart';
import 'package:firebase_login_example/shared/services/firestore_service.dart';
import 'package:get/get.dart';

class DependencyInjection {
  static init() async {
    //Sıralama önemli önce firebase'in core'unun gelmesi gerekiyor.
    //Önce firebase servislerinin gelmesi gerekiyor yoksa authservise gelemez.
    await Get.putAsync(() => FirebaseService().init());
    await Get.putAsync(() => AuthService().init());
    await Get.putAsync(() => FirestoreService().init());
  }
}
