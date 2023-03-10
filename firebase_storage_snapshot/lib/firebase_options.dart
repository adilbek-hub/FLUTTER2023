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
    apiKey: 'AIzaSyDjAMRqSxLLeCVsBSOcuXDpHdMkZqMFz94',
    appId: '1:176465355191:web:8bfa11409d58011813c832',
    messagingSenderId: '176465355191',
    projectId: 'storage-1b557',
    authDomain: 'storage-1b557.firebaseapp.com',
    storageBucket: 'storage-1b557.appspot.com',
    measurementId: 'G-1X5CXCSYK3',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBR2yQNY_thUn25CbI-7yEl-uwfsMh1icc',
    appId: '1:176465355191:android:bd3930d0250d6aee13c832',
    messagingSenderId: '176465355191',
    projectId: 'storage-1b557',
    storageBucket: 'storage-1b557.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAawmiRZX4TbKxvvYMk64UwBQftJ791UdA',
    appId: '1:176465355191:ios:3dd136ec24a63b9813c832',
    messagingSenderId: '176465355191',
    projectId: 'storage-1b557',
    storageBucket: 'storage-1b557.appspot.com',
    iosClientId: '176465355191-vv9bkrqel4lofdk96t48jos91fig40tu.apps.googleusercontent.com',
    iosBundleId: 'com.example.firebaseStorageSnapshot',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAawmiRZX4TbKxvvYMk64UwBQftJ791UdA',
    appId: '1:176465355191:ios:3dd136ec24a63b9813c832',
    messagingSenderId: '176465355191',
    projectId: 'storage-1b557',
    storageBucket: 'storage-1b557.appspot.com',
    iosClientId: '176465355191-vv9bkrqel4lofdk96t48jos91fig40tu.apps.googleusercontent.com',
    iosBundleId: 'com.example.firebaseStorageSnapshot',
  );
}
