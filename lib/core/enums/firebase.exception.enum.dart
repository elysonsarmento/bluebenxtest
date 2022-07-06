

import 'package:firebase_auth/firebase_auth.dart';

enum FirebaseError { notFound, wrongPassword, unknownError }

extension FirebaseErrorExtension on FirebaseAuthException {
  FirebaseError get errorAuthentication {
    if (code == 'user-not-found') {
      return FirebaseError.notFound;
    } else if (code == 'wrong-password') {
      return FirebaseError.wrongPassword;
    } else {
      return FirebaseError.unknownError;
    }
  }
}
