import 'package:bluebenxtest/presentation/bloc/login_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final userTextController = TextEditingController();
  final passwordTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          bottom: false,
          child: BlocBuilder<LoginBloc, LoginState>(
            builder: (context, state) {
              if (state is SucessRequest) {
                // Navigator.of(context).pushNamed(
                //   arguments: {"teste": "teste"}
                // );
              }
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextFormField(
                    controller: userTextController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(
                      labelText: 'Enter your email',
                    ),
                    // validator: (value) {
                    //   if (value == null || value.isEmpty) {
                    //     return 'Can\'t be empty';
                    //   }
                    //   else null;
                    // },
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Enter your password',
                    ),
                    controller: passwordTextController,
                    obscureText: true,
                    keyboardType: TextInputType.visiblePassword,
                  ),
                  TextButton(
                    onPressed: () async {
                      context.read<LoginBloc>().add(SignInRequested(
                          userTextController.text,
                          passwordTextController.text));
                    },
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            Theme.of(context).primaryColor)),
                    child:  const Text(
                            'Entrar',
                            style: TextStyle(color: Colors.white),
                          )
                        
                  )
                ],
              );
            },
          )),
    );
  }
}
