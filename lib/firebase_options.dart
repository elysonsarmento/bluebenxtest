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
    apiKey: 'AIzaSyACx64qYpBw3m9J8V7_K7EzIrYVs4vA1ho',
    appId: '1:734918323058:web:c8b34f4ef0d6751badcbeb',
    messagingSenderId: '734918323058',
    projectId: 'testeapp-923bc',
    authDomain: 'testeapp-923bc.firebaseapp.com',
    storageBucket: 'testeapp-923bc.appspot.com',
    measurementId: 'G-D94SJ3HHNL',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCtUOZg7Vhz3T-iYdwmOKyZdd0ayl5M5G4',
    appId: '1:734918323058:android:529d5fbe72cdff76adcbeb',
    messagingSenderId: '734918323058',
    projectId: 'testeapp-923bc',
    storageBucket: 'testeapp-923bc.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAKuETUjV98bWWGAia4lkMr2stSgnrhwPs',
    appId: '1:734918323058:ios:29af21e7b87e9c87adcbeb',
    messagingSenderId: '734918323058',
    projectId: 'testeapp-923bc',
    storageBucket: 'testeapp-923bc.appspot.com',
    iosClientId: '734918323058-f9kh5isqid3pomdcibritqq03csqrpmn.apps.googleusercontent.com',
    iosBundleId: 'com.bluebenx.teste.bluebenxtest',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAKuETUjV98bWWGAia4lkMr2stSgnrhwPs',
    appId: '1:734918323058:ios:6ebb97ab6b198b87adcbeb',
    messagingSenderId: '734918323058',
    projectId: 'testeapp-923bc',
    storageBucket: 'testeapp-923bc.appspot.com',
    iosClientId: '734918323058-p4boc1541scvrtaiocerh4dncuki6m2n.apps.googleusercontent.com',
    iosBundleId: 'teste',
  );
}
