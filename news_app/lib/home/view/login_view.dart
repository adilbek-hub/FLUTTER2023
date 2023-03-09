import 'package:flutter/material.dart';
import 'package:news_app/home/give_news.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  bool isActive = false;
  String? name;
  String? password;

  // void startWork() {
  //   if (name != null && password != null) {
  //     if (name!.isEmpty || password!.isEmpty) {
  //       isActive = false;
  //     } else {
  //       isActive = true;
  //     }
  //   }
  //   setState(() {});
  // }

  void startWork() {
    if (name!.isEmpty || password!.isEmpty) {
      isActive = false;
    } else {
      isActive = true;
    }

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const FlutterLogo(
                size: 100,
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'User Name',
                      hintText: 'Enter valid mail id as abc@gmail.com'),
                  onChanged: (String? value) {
                    name = value;
                    startWork();
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  obscureText: true,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                      hintText: 'Enter your secure password'),
                  onChanged: (String? value) {
                    password = value;
                    startWork();
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    side: const BorderSide(
                      color: Colors.white,
                    ),
                  ),
                  onPressed: isActive
                      ? () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => GiveNews(),
                            ),
                          );
                        }
                      : null,
                  child: const Text(
                    'Кирүү',
                    style: TextStyle(),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
