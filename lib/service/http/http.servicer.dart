import 'package:firebase_auth/firebase_auth.dart';
abstract class IHTTPClientService {
  UserCredential get authUser;
  Future<List> get(String url, {Map<String, dynamic>? params});
}
