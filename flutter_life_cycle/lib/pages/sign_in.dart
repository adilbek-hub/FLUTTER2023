import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(' Sign In'),
      ),
      body: Column(
        children: [
          TextFormField(),
          TextFormField(),
          TextFormField(),
          ElevatedButton(
            onPressed: () {},
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
