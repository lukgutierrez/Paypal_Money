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
    apiKey: 'AIzaSyA_z4pBQTCFfM3_f--DLSJt8_DVRmWcSAY',
    appId: '1:690338070031:web:c8ab57d99909bb6f5bed7a',
    messagingSenderId: '690338070031',
    projectId: 'aplication-b5d5a',
    authDomain: 'aplication-b5d5a.firebaseapp.com',
    storageBucket: 'aplication-b5d5a.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAZGUScIi6j6UqWiw3mO8hW8fsLS47f4JY',
    appId: '1:690338070031:android:ac0edf532f995d835bed7a',
    messagingSenderId: '690338070031',
    projectId: 'aplication-b5d5a',
    storageBucket: 'aplication-b5d5a.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBgK6w9sNeY1M_dTskvPwOHqn5KQBHtWZ0',
    appId: '1:690338070031:ios:a9f5517b9f076edc5bed7a',
    messagingSenderId: '690338070031',
    projectId: 'aplication-b5d5a',
    storageBucket: 'aplication-b5d5a.appspot.com',
    iosClientId: '690338070031-kcubclbv18q02bnh8oqsu28nbap33ut6.apps.googleusercontent.com',
    iosBundleId: 'com.example.paypalMoneyFalse',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBgK6w9sNeY1M_dTskvPwOHqn5KQBHtWZ0',
    appId: '1:690338070031:ios:a9f5517b9f076edc5bed7a',
    messagingSenderId: '690338070031',
    projectId: 'aplication-b5d5a',
    storageBucket: 'aplication-b5d5a.appspot.com',
    iosClientId: '690338070031-kcubclbv18q02bnh8oqsu28nbap33ut6.apps.googleusercontent.com',
    iosBundleId: 'com.example.paypalMoneyFalse',
  );
}
