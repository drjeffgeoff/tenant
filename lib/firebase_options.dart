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
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
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

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDp4FXbrz-3V7e18cu9oe4AEa90QeBI4Co',
    appId: '1:384554426334:android:f64c186f4b8ae90eaac74f',
    messagingSenderId: '384554426334',
    projectId: 'nyumbayo-366ef',
    databaseURL: 'https://nyumbayo-366ef-default-rtdb.firebaseio.com',
    storageBucket: 'nyumbayo-366ef.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBkXVMD3_mhs7ewjI_szYl1pa6NFiGBcmY',
    appId: '1:384554426334:ios:9fae6a9ec8646527aac74f',
    messagingSenderId: '384554426334',
    projectId: 'nyumbayo-366ef',
    databaseURL: 'https://nyumbayo-366ef-default-rtdb.firebaseio.com',
    storageBucket: 'nyumbayo-366ef.appspot.com',
    iosClientId: '384554426334-btclv6adm4b2fuj99eo5tpijv9k5gbqg.apps.googleusercontent.com',
    iosBundleId: 'com.example.client',
  );
}
