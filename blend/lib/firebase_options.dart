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
    apiKey: 'AIzaSyDmIaxkHWpEP0X8eYGEQ9YoPtFTtsYtcaM',
    appId: '1:438579021661:web:2bcd8c49187dc8277a0ab4',
    messagingSenderId: '438579021661',
    projectId: 'barista-blend',
    authDomain: 'barista-blend.firebaseapp.com',
    storageBucket: 'barista-blend.appspot.com',
    measurementId: 'G-PW10CEZGVE',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAyml-YViM4Uoin5ms6q-4sZwAE_X86Z8k',
    appId: '1:438579021661:android:e92e5f50e9cae9e77a0ab4',
    messagingSenderId: '438579021661',
    projectId: 'barista-blend',
    storageBucket: 'barista-blend.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAxcDoGZUVmfuMuawJc3ZAk6tG6OxgxJ-M',
    appId: '1:438579021661:ios:3832a59a673f38b27a0ab4',
    messagingSenderId: '438579021661',
    projectId: 'barista-blend',
    storageBucket: 'barista-blend.appspot.com',
    androidClientId: '438579021661-6ciujj02v8eva03f30u2qald2vhl3jkr.apps.googleusercontent.com',
    iosClientId: '438579021661-m94pn3rmqimijbdtud20k77j049950k1.apps.googleusercontent.com',
    iosBundleId: 'com.baristas.blend',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAxcDoGZUVmfuMuawJc3ZAk6tG6OxgxJ-M',
    appId: '1:438579021661:ios:dea32f8d0afbedcb7a0ab4',
    messagingSenderId: '438579021661',
    projectId: 'barista-blend',
    storageBucket: 'barista-blend.appspot.com',
    androidClientId: '438579021661-6ciujj02v8eva03f30u2qald2vhl3jkr.apps.googleusercontent.com',
    iosClientId: '438579021661-3l3qdov12vmgs08kdtbjbelqraohq8ot.apps.googleusercontent.com',
    iosBundleId: 'com.baristas.blend.RunnerTests',
  );
}
