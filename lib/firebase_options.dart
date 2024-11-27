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
    apiKey: 'AIzaSyByhy2BuO1HsFu98lAHCxXTVigR58VfeAw',
    appId: '1:910074257593:web:5e89221ac841eabd987b68',
    messagingSenderId: '910074257593',
    projectId: 't-store-2152c',
    authDomain: 't-store-2152c.firebaseapp.com',
    storageBucket: 't-store-2152c.firebasestorage.app',
    measurementId: 'G-E99X8Y2G2V',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBZ1-EDMP6agjojnU6Ki1OPOFhoe10weiU',
    appId: '1:910074257593:android:1c7e5e0a025d40e2987b68',
    messagingSenderId: '910074257593',
    projectId: 't-store-2152c',
    storageBucket: 't-store-2152c.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBj9oXI9sV5ehVCgPeLo5Jn0EXOUZ6SuPQ',
    appId: '1:910074257593:ios:0b918d0e080f1783987b68',
    messagingSenderId: '910074257593',
    projectId: 't-store-2152c',
    storageBucket: 't-store-2152c.firebasestorage.app',
    iosBundleId: 'com.example.storeApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBj9oXI9sV5ehVCgPeLo5Jn0EXOUZ6SuPQ',
    appId: '1:910074257593:ios:0b918d0e080f1783987b68',
    messagingSenderId: '910074257593',
    projectId: 't-store-2152c',
    storageBucket: 't-store-2152c.firebasestorage.app',
    iosBundleId: 'com.example.storeApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyByhy2BuO1HsFu98lAHCxXTVigR58VfeAw',
    appId: '1:910074257593:web:1da405c3a5410d18987b68',
    messagingSenderId: '910074257593',
    projectId: 't-store-2152c',
    authDomain: 't-store-2152c.firebaseapp.com',
    storageBucket: 't-store-2152c.firebasestorage.app',
    measurementId: 'G-BRY29DHLY0',
  );
}
