
import 'package:firebase_auth/firebase_auth.dart';

abstract class IFireBaseDatasoucer {
  Future<UserCredential> login(String email, String password);
}
