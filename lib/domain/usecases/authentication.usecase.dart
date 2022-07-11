import 'package:bluebenxtest/domain/entities/user.entity.dart';
import 'package:bluebenxtest/domain/repositories/auth.repositoy.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthenticationUseCase {
  final IAuthRepository _repository;

  AuthenticationUseCase({required repository}) : _repository = repository;

  Future<UserCredential> login(String email, String password) async {
    try {
      return await _repository
          .login(UserLogin(email: email, password: password));
    } catch (e) {
      rethrow;
    }
  }
}
