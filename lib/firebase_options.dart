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
    apiKey: 'AIzaSyAgsqfA2CowNbmTtYqrW1MlWzVDsE5VWa4',
    appId: '1:393409877189:web:857cba4c619f08343eccac',
    messagingSenderId: '393409877189',
    projectId: 'flutterui-b4f0b',
    authDomain: 'flutterui-b4f0b.firebaseapp.com',
    storageBucket: 'flutterui-b4f0b.appspot.com',
    measurementId: 'G-RZCV9R05B3',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBpoPqqv05eLkKdNP8Q29s22Dh69E_zQiA',
    appId: '1:393409877189:android:9102d187c894bf8e3eccac',
    messagingSenderId: '393409877189',
    projectId: 'flutterui-b4f0b',
    storageBucket: 'flutterui-b4f0b.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCtGLjp4yboVK2NRSX2_1L7mHKqL17_Cas',
    appId: '1:393409877189:ios:8d4d9fc0a2d3238c3eccac',
    messagingSenderId: '393409877189',
    projectId: 'flutterui-b4f0b',
    storageBucket: 'flutterui-b4f0b.appspot.com',
    iosBundleId: 'com.flutterwidget.hub',
  );
}
