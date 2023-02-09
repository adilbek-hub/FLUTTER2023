import 'package:email_password_bloc_firebase/auth_repo.dart';
import 'package:email_password_bloc_firebase/bloc/auth_bloc.dart';
import 'package:email_password_bloc_firebase/home/my_home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
        create: (context) => AuthRepository(),
        child: BlocProvider(
          create: (context) => AuthBloc(
              authRepository: RepositoryProvider.of<AuthRepository>(context)),
          child: MaterialApp(
            title: 'Flutter Demo',
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            home: const MyHomePage(),
          ),
        ));
  }
}
