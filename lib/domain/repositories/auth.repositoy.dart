import 'package:bluebenxtest/domain/entities/user.entity.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract class IAuthRepository {
  Future<UserCredential> login(UserLogin user);
}