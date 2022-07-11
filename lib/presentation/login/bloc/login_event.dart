part of 'login_bloc.dart';

@immutable
abstract class LoginEvent {}

class SignInRequested extends LoginEvent {
  final String user;
  final String password;

  SignInRequested(this.user, this.password);
}
