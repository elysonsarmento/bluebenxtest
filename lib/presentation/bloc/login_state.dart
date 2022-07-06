part of 'login_bloc.dart';

@immutable
abstract class LoginState {}

class LoginInitial extends LoginState {
}

class LoginRequest extends LoginState {
}

class SucessRequest extends LoginState {
}

class ErrorRequest extends LoginState {
}
