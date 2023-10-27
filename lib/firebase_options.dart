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
    apiKey: 'AIzaSyDCrn035fScOOlrmBERcHUfO6kA9pOSFhk',
    appId: '1:330779556030:web:e002f704fbc349bf2106ef',
    messagingSenderId: '330779556030',
    projectId: 'counter-strike-3-a43a0',
    authDomain: 'counter-strike-3-a43a0.firebaseapp.com',
    storageBucket: 'counter-strike-3-a43a0.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyACeQJw7ynOKUgFfax1K1yiXhag0_qEMcs',
    appId: '1:330779556030:android:b32d41cd2ba29e3f2106ef',
    messagingSenderId: '330779556030',
    projectId: 'counter-strike-3-a43a0',
    storageBucket: 'counter-strike-3-a43a0.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBzYZ1Ce58Q73ePOMKgMSH39_MpwoD1k8k',
    appId: '1:330779556030:ios:244097ae1c9d7b352106ef',
    messagingSenderId: '330779556030',
    projectId: 'counter-strike-3-a43a0',
    storageBucket: 'counter-strike-3-a43a0.appspot.com',
    iosBundleId: 'com.example.counterStrike3',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBzYZ1Ce58Q73ePOMKgMSH39_MpwoD1k8k',
    appId: '1:330779556030:ios:1e4649e6851fa8a92106ef',
    messagingSenderId: '330779556030',
    projectId: 'counter-strike-3-a43a0',
    storageBucket: 'counter-strike-3-a43a0.appspot.com',
    iosBundleId: 'com.example.counterStrike3.RunnerTests',
  );
}
