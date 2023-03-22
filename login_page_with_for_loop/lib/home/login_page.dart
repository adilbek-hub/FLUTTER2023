import 'package:flutter/material.dart';
import 'package:login_page_with_for_loop/model.dart';
import 'package:login_page_with_for_loop/second_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String? _name;
  String? _email;
  void controlNameEmail(String name, String email) {
    //name == Aybek
    //email == aybek@mail
    int index = 0;
    for (final student in studentter) {
      //index == 2;
      //student == hanzada
      index++;
      //index = 3;
      if (_name == student.name && _email != student.email) {
        //name != daniar   //email == daniar@mail
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SecondPage(
              student: student,
            ),
          ),
        );
        break;
      } else {
        if (index == studentter.length) {
          //index == 2 //studentter.length == 5
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            content: Text('Kechiresiz atyniz je pochta tuura emes'),
          ));
        } else {
          continue;
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('LoginPage'.toUpperCase()),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                FlutterLogo(
                  size: 80,
                ),
                Text('Flutter'),
              ],
            ),
            const Text(
              'Welcome To Saifty!',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
            ),
            const Text('Keep your data safe!'),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
              child: TextField(
                // ignore: prefer_const_constructors
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  labelText: 'Name',
                ),
                onChanged: (String value) {
                  _name = value;
                  print("Value: $value");
                  print("Name: $_name");
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
              child: TextField(
                // ignore: prefer_const_constructors
                decoration: InputDecoration(
                  // ignore: prefer_const_constructors
                  border: OutlineInputBorder(),
                  labelText: 'Gmail',
                ),
                onChanged: (String value) {
                  _email = value;
                  print("Value: $value");
                  print("Email: $_email");
                },
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(200, 40),
              ),
              onPressed: () {
                if (_name != null && _email != null) {
                  controlNameEmail(_name!, _email!);
                }
              },
              child: const Text('Login'),
            )
          ],
        ),
      ),
    );
  }
}
