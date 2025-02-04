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
    apiKey: 'AIzaSyAkDV3GQkc-5u1_BYGfk8sZ0zzAEt8W9ho',
    appId: '1:807156513820:web:3e312bd808f04a83a633d9',
    messagingSenderId: '807156513820',
    projectId: 'ummhamuslimbangla',
    authDomain: 'ummhamuslimbangla.firebaseapp.com',
    storageBucket: 'ummhamuslimbangla.appspot.com',
    measurementId: 'G-963JZ9GV6K',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBx4-FNuUOCPqKWO97sbXI3SQnyTeci1oE',
    appId: '1:807156513820:android:ae8d584c8eac794aa633d9',
    messagingSenderId: '807156513820',
    projectId: 'ummhamuslimbangla',
    storageBucket: 'ummhamuslimbangla.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBKKY9TEBG2O4RJdJdE1d-UJeaZcpp6fts',
    appId: '1:807156513820:ios:eedf30ccc3d43e27a633d9',
    messagingSenderId: '807156513820',
    projectId: 'ummhamuslimbangla',
    storageBucket: 'ummhamuslimbangla.appspot.com',
    iosBundleId: 'com.lwmsoftltd.ummahmuslimbangla.ummahmuslimbangla',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBKKY9TEBG2O4RJdJdE1d-UJeaZcpp6fts',
    appId: '1:807156513820:ios:a3eb0d4642c736c2a633d9',
    messagingSenderId: '807156513820',
    projectId: 'ummhamuslimbangla',
    storageBucket: 'ummhamuslimbangla.appspot.com',
    iosBundleId: 'com.lwmsoftltd.ummahmuslimbangla.ummahmuslimbangla.RunnerTests',
  );
}
