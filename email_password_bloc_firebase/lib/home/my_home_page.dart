import 'package:email_password_bloc_firebase/bloc/auth_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder(builder: (context, state) {
        if (state is Loading) {
          return ElevatedButton(onPressed: () {}, child: Text('Email'));
        } else if (state is UnAuthenticated) {
          return Text('Error');
        } else {
          return Text('Sorry Some Error');
        }
      }),
    );
  }
}
