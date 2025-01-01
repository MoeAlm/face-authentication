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
    apiKey: 'AIzaSyB32w8csrhPE4BFqRQWXIoV-lUdmF4d6Xs',
    appId: '1:426063886579:web:45e90e80a63830cfce1f86',
    messagingSenderId: '426063886579',
    projectId: 'face-detection-ea62f',
    authDomain: 'face-detection-ea62f.firebaseapp.com',
    storageBucket: 'face-detection-ea62f.firebasestorage.app',
    measurementId: 'G-8945Z8BD2T',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCtQ5xCe6Qi-_AOu5TE7Vbd5KWmzBrif7Q',
    appId: '1:426063886579:android:d45f1142bf085582ce1f86',
    messagingSenderId: '426063886579',
    projectId: 'face-detection-ea62f',
    storageBucket: 'face-detection-ea62f.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCh5bz5yW9znA9rKm5aZxNPMw8Zp8IqApY',
    appId: '1:426063886579:ios:b28f6db2b5e48090ce1f86',
    messagingSenderId: '426063886579',
    projectId: 'face-detection-ea62f',
    storageBucket: 'face-detection-ea62f.firebasestorage.app',
    iosBundleId: 'com.example.faceAuth',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCh5bz5yW9znA9rKm5aZxNPMw8Zp8IqApY',
    appId: '1:426063886579:ios:b28f6db2b5e48090ce1f86',
    messagingSenderId: '426063886579',
    projectId: 'face-detection-ea62f',
    storageBucket: 'face-detection-ea62f.firebasestorage.app',
    iosBundleId: 'com.example.faceAuth',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyB32w8csrhPE4BFqRQWXIoV-lUdmF4d6Xs',
    appId: '1:426063886579:web:3b50cd3b404756dfce1f86',
    messagingSenderId: '426063886579',
    projectId: 'face-detection-ea62f',
    authDomain: 'face-detection-ea62f.firebaseapp.com',
    storageBucket: 'face-detection-ea62f.firebasestorage.app',
    measurementId: 'G-381VT8QVSK',
  );
}
