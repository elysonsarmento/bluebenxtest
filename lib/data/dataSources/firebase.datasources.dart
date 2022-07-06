
import 'package:bluebenxtest/core/enums/authentication.enum.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract class IFireBaseDataSoucer {
  Future<UserCredential> login(String email, String password);
}
