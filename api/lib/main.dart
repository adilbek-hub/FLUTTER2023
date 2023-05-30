import 'dart:io';

import 'package:api/model.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}

void main() {
  HttpOverrides.global = MyHttpOverrides();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const RandomUser(),
    );
  }
}

class RandomUser extends StatefulWidget {
  const RandomUser({super.key});

  @override
  State<RandomUser> createState() => _RandomUserState();
}

final dio = Dio();

class _RandomUserState extends State<RandomUser> {
  @override
  void initState() {
    generateRandomUser();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('RandomUser'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(''),
            const SizedBox(height: 10),
            const Text('male'),
            const SizedBox(height: 10),
            const Text('torje.kolsto@example.com'),
            const SizedBox(height: 10),
            Image.network(
              'https://randomuser.me/api/portraits/med/men/75.jpg',
            ),
            const SizedBox(height: 10),
            MaterialButton(
                color: const Color.fromARGB(255, 246, 157, 157),
                onPressed: () {
                  generateRandomUser();
                  setState(() {});
                })
          ],
        ),
      ),
    );
  }
}

Future generateRandomUser() async {
  final result = await dio.get('https://randomuser.me/api');
  final UserModel userModel = UserModel.fromJson(result.data);
  print(userModel);
  return userModel;
}
