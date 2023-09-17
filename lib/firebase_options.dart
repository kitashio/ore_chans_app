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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyAiZ0q7seftjAyDRHMNf-KS95oUWRRxwyE',
    appId: '1:483060658537:web:6a6e602ef4a0574f658df8',
    messagingSenderId: '483060658537',
    projectId: 'mvvm-app-f2cf7',
    authDomain: 'mvvm-app-f2cf7.firebaseapp.com',
    storageBucket: 'mvvm-app-f2cf7.appspot.com',
    measurementId: 'G-7NT5L46HNV',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCqaLLt4CtxNHIu2tM5BA_l0pxw333gQGw',
    appId: '1:483060658537:android:b6723a8d92433f8a658df8',
    messagingSenderId: '483060658537',
    projectId: 'mvvm-app-f2cf7',
    storageBucket: 'mvvm-app-f2cf7.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDfn-dLiF2uvMra-OrRutLIxKF705dDfxs',
    appId: '1:483060658537:ios:69c27e1aed2f2af8658df8',
    messagingSenderId: '483060658537',
    projectId: 'mvvm-app-f2cf7',
    storageBucket: 'mvvm-app-f2cf7.appspot.com',
    iosBundleId: 'com.example.oreChansApp',
  );
}