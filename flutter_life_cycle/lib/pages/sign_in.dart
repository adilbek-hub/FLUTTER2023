import 'package:flutter/material.dart';
import 'package:flutter_life_cycle/service/user_state.dart';

class SignIn extends StatelessWidget {
  SignIn({super.key});

  final ctrName = TextEditingController();

  final ctrPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(' Sign In'),
      ),
      body: Column(
        children: [
          TextFormField(controller: ctrName),
          TextFormField(controller: ctrPassword),
          ElevatedButton(
            onPressed: () async {
              await userService.signIn(
                name: ctrName.text,
                password: ctrPassword.text,
              );
            },
            child: const Text('Sign In'),
          ),
          TextButton(
            onPressed: () {},
            child: Text('Sign Up'),
          ),
        ],
      ),
    );
  }
}
