import 'package:bluebenxtest/core/enums/firebase.exception.enum.dart';
import 'package:firebase_auth/firebase_auth.dart';

enum Authentication {
  sucess,
  errorAuthentication,
  passwordError,
  notExist,
}

extension AuthenticationExtension on FirebaseAuthException {
  Authentication get throwAuthentication {
    switch (errorAuthentication) {
      case FirebaseError.wrongPassword:
        return Authentication.passwordError;
      case FirebaseError.notFound:
        return Authentication.notExist;
      case FirebaseError.unknownError:
        return Authentication.errorAuthentication;
    }
  }
}