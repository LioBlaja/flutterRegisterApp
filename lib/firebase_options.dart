// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return windows;
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
    apiKey: 'AIzaSyDDmjrJoucCVFI6u6VPwrdMSXdOFf-feX8',
    appId: '1:865058260337:web:6cc9dfbcfe6e232a8922d0',
    messagingSenderId: '865058260337',
    projectId: 'long-video-register-app',
    authDomain: 'long-video-register-app.firebaseapp.com',
    storageBucket: 'long-video-register-app.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAHDqpJrVRey7LNpBtsWwl5jDzQw4PVLVI',
    appId: '1:865058260337:android:4b0449eda78a12f48922d0',
    messagingSenderId: '865058260337',
    projectId: 'long-video-register-app',
    storageBucket: 'long-video-register-app.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCcufZmmaAAYGS3xsQd5bVnDEyFEzPPS9E',
    appId: '1:865058260337:ios:f6f34ab984b51ab48922d0',
    messagingSenderId: '865058260337',
    projectId: 'long-video-register-app',
    storageBucket: 'long-video-register-app.appspot.com',
    iosBundleId: 'com.example.longVideoRegisterApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCcufZmmaAAYGS3xsQd5bVnDEyFEzPPS9E',
    appId: '1:865058260337:ios:f6f34ab984b51ab48922d0',
    messagingSenderId: '865058260337',
    projectId: 'long-video-register-app',
    storageBucket: 'long-video-register-app.appspot.com',
    iosBundleId: 'com.example.longVideoRegisterApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDDmjrJoucCVFI6u6VPwrdMSXdOFf-feX8',
    appId: '1:865058260337:web:2bc887866637b2908922d0',
    messagingSenderId: '865058260337',
    projectId: 'long-video-register-app',
    authDomain: 'long-video-register-app.firebaseapp.com',
    storageBucket: 'long-video-register-app.appspot.com',
  );

}