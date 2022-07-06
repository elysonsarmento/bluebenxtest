import 'package:bluebenxtest/core/enums/authentication.enum.dart';
import 'package:bluebenxtest/data/dataSources/firebase.datasources.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FirebaseImplements implements IFireBaseDataSoucer {
  final FirebaseAuth userCredential;

  FirebaseImplements(this.userCredential);
  @override
  Future<UserCredential> login(String email, String password) async {
    try {
      final result = await userCredential.signInWithEmailAndPassword(
          email: email, password: password);
      return result;
    } on FirebaseAuthException catch (e) {
      throw e.throwAuthentication;
    }
  }
}
