import 'package:bluebenxtest/core/core.dart';
import 'package:bluebenxtest/data/data.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class FirebaseMock extends Mock implements FirebaseAuth {}

void main() {
  final FirebaseAuth mockFirebase = FirebaseMock();
  final IFireBaseDatasoucer sut = FirebaseImplements(mockFirebase);

  setUpAll(
    () {
      registerFallbackValue(mockFirebase);
    },
  );

  group('Error Firebase', () {
    void mockFirebaseLogin({required String code}) => when(
          () => mockFirebase.signInWithEmailAndPassword(
              email: "any", password: "any"),
        ).thenThrow(FirebaseAuthException(code: code));
    test(
        "should throw a Authentication Error when the response code is 'user-not-found'",
        () async {
      mockFirebaseLogin(code: 'user-not-found');

      final result = sut.login("any", "any");

      expect(() => result, throwsA(TypeMatcher<Authentication>()));
    });
  });
}
