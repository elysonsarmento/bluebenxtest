import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:bluebenxtest/domain/usecases/authentication.usecase.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final AuthenticationUseCase useCase;
  LoginBloc({required this.useCase}) : super(LoginInitial()) {
    on<SignInRequested>(_signInequested);
  }

  _signInequested(SignInRequested event, Emitter<LoginState> emit) async {
    emit(LoginRequest());
    try {
      final user = await useCase.login(event.user, event.password);
      emit(SucessRequest(user));
    }catch (e) {
      emit(ErrorRequest());
    }
  }
}
