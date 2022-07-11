import 'package:bluebenxtest/data/dataSources/coins.datasourcer.implements.dart';
import 'package:bluebenxtest/data/dataSources/coins.datasources.dart';
import 'package:bluebenxtest/data/repositories/coins.implements.dart';
import 'package:bluebenxtest/domain/repositories/coins.repository.dart';
import 'package:bluebenxtest/domain/usecases/coins.usecases.dart';
import 'package:bluebenxtest/service/http/http.dart';

import 'presentation/coins/coins.dart';
import 'presentation/login/login.dart';

import 'data/data.dart';
import 'domain/domain.dart';
import 'firebase_options.dart';
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
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<IFireBaseDatasoucer>(
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
          BlocProvider(
              create: (context) => LoginBloc(useCase: _authUseCase(context)))
        ],
        child: MaterialApp(
          title: 'Flutter Demo',
          onGenerateRoute: (router) {
            if (router.name == "/coins") {
              return MaterialPageRoute(
                  builder: (context) => MultiRepositoryProvider(
                        providers: [
                          RepositoryProvider<IHTTPClientService>(
                              create: (_) => HTTPClient(
                                  authUser:
                                      (router.arguments! as UserCredential))),
                          RepositoryProvider<ICoinsDataSourcer>(
                            create: (_) => CoinDatasourceImplements(_client(_)),
                          ),
                          RepositoryProvider<ICoinsRepo>(
                            create: (_) =>
                                CoinsRepositoryImplements(_coinDatasourcer(_)),
                          ),
                          RepositoryProvider<CoinsUseCase>(
                            create: (_) => CoinsUseCase(_coinRepo(_)),
                          ),
                        ],
                        child: BlocProvider(
                            child: const CoinsList(),
                            create: (_) => CoinsBloc(
                                RepositoryProvider.of<CoinsUseCase>(_))..add(CoinsLoadingEvent())),
                      ));
            }
            return null;
          },
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: HomePage(),
        ),
      ),
    );
  }

  IFireBaseDatasoucer _firebase(BuildContext _) => RepositoryProvider.of(_);
  ICoinsDataSourcer _coinDatasourcer(BuildContext _) =>
      RepositoryProvider.of(_);
  ICoinsRepo _coinRepo(BuildContext _) => RepositoryProvider.of(_);
  IHTTPClientService _client(BuildContext _) => RepositoryProvider.of(_);
  IAuthRepository _authRepository(BuildContext _) => RepositoryProvider.of(_);
  AuthenticationUseCase _authUseCase(BuildContext _) =>
      RepositoryProvider.of(_);
}
