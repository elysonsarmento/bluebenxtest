import 'package:bluebenxtest/core/enums/authentication.enum.dart';
import 'package:bluebenxtest/data/dataSources/firebase.datasources.dart';
import 'package:bluebenxtest/domain/entities/user.entity.dart';
import 'package:bluebenxtest/domain/repositories/auth.repositoy.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthRepositoryImplementation implements IAuthRepository {
  final IFireBaseDatasoucer firebase;

  AuthRepositoryImplementation({required this.firebase});
  @override
  Future<UserCredential> login(UserLogin user) async {
    try {
      final UserCredential result =  await firebase.login(user.email, user.password);
      return result;
    } on Authentication {
      rethrow;
    }
  }
}
