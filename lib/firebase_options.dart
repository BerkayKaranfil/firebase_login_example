// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyDBNuz3EEmijhBnI5eHNstxJnvyQyDG2Fg',
    appId: '1:429387870258:web:d3fe258d2ff864629b4c2b',
    messagingSenderId: '429387870258',
    projectId: 'berkayflutter',
    authDomain: 'berkayflutter.firebaseapp.com',
    storageBucket: 'berkayflutter.appspot.com',
    measurementId: 'G-YG9MVWMV0R',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCet9sA8uCGa7bMETcr99uYbzoS5Aeh3Gk',
    appId: '1:429387870258:android:a1838035b25ad34c9b4c2b',
    messagingSenderId: '429387870258',
    projectId: 'berkayflutter',
    storageBucket: 'berkayflutter.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA7AkpNDk3g08H_neoLmhp9EqaJYbMTmPk',
    appId: '1:429387870258:ios:4035d677e7efe8459b4c2b',
    messagingSenderId: '429387870258',
    projectId: 'berkayflutter',
    storageBucket: 'berkayflutter.appspot.com',
    iosClientId: '429387870258-qm31ae48t2km40e12lid4a5phlcb32u1.apps.googleusercontent.com',
    iosBundleId: 'com.example.firebaseLoginExample',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyA7AkpNDk3g08H_neoLmhp9EqaJYbMTmPk',
    appId: '1:429387870258:ios:4035d677e7efe8459b4c2b',
    messagingSenderId: '429387870258',
    projectId: 'berkayflutter',
    storageBucket: 'berkayflutter.appspot.com',
    iosClientId: '429387870258-qm31ae48t2km40e12lid4a5phlcb32u1.apps.googleusercontent.com',
    iosBundleId: 'com.example.firebaseLoginExample',
  );
}
