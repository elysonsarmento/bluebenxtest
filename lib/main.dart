import 'package:bluebenxtest/data/dataSources/firebase.datasource.implements.dart';
import 'package:bluebenxtest/data/dataSources/firebase.datasources.dart';
import 'package:bluebenxtest/data/repositories/auth.implements.dart';
import 'package:bluebenxtest/domain/entities/user.entity.dart';
import 'package:bluebenxtest/domain/repositories/auth.repositoy.dart';
import 'package:bluebenxtest/domain/usecases/authentication.usecase.dart';
import 'package:bluebenxtest/firebase_options.dart';
import 'package:bluebenxtest/presentation/bloc/login_bloc.dart';
import 'package:bluebenxtest/presentation/view/login.page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  IFireBaseDataSoucer _firebase(BuildContext _) => RepositoryProvider.of(_);
  IAuthRepository _authRepository(BuildContext _) => RepositoryProvider.of(_);
  AuthenticationUseCase _authUseCase(BuildContext _) => RepositoryProvider.of(_);
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<IFireBaseDataSoucer>(
            create: (_) => FirebaseImplements(FirebaseAuth.instance)),
        RepositoryProvider<IAuthRepository>(
            create: (_) =>
                AuthRepositoryImplementation(firebase: _firebase(_))),
        RepositoryProvider(
          create: (_) => AuthenticationUseCase(repository: _authRepository(_)),
        ),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => LoginBloc(
            useCase: _authUseCase(context)
          ))
        ],
        child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            // This is the theme of your application.
            //
            // Try running your application with "flutter run". You'll see the
            // application has a blue toolbar. Then, without quitting the app, try
            // changing the primarySwatch below to Colors.green and then invoke
            // "hot reload" (press "r" in the console where you ran "flutter run",
            // or simply save your changes to "hot reload" in a Flutter IDE).
            // Notice that the counter didn't reset back to zero; the application
            // is not restarted.
            primarySwatch: Colors.blue,
          ),
          home: HomePage(),
        ),
      ),
    );
  }
}
