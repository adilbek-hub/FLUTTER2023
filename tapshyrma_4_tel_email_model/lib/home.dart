import 'package:flutter/material.dart';
import 'package:tapshyrma_4_tel_email_model/model.dart';
import 'package:tapshyrma_4_tel_email_model/second_page.dart';

final students = <Student>[mayrambek, dinara, aybek];
const snackbar = SnackBar(
    content: Text('Сиздин Телефон номериңиз же Почтаңыз туура эмес!!!'));

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isActive = false;
  String? phone;
  String? email;

  void _activate() {
    if (phone != null && email != null) {
      if (phone!.isEmpty || email!.isEmpty) {
        isActive = false;
      } else {
        isActive = true;
      }
    }

    setState(() {});
  }

  void controllEmailPhone(String phone, String email) {
    for (final student in students) {
      if (phone == student.phone && email == student.email) {
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
        ScaffoldMessenger.of(context).showSnackBar(snackbar);
        
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff056c5c),
      appBar: AppBar(
        backgroundColor: Colors.white,
        // ignore: prefer_const_constructors
        title: Center(
            child: const Text(
          "Тапшырма 4",
          style: TextStyle(color: Colors.black),
        )),
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Турат Алыбаев",
              style: TextStyle(
                fontSize: 48,
                fontFamily: "Pacifico-Regular",
                color: Color(0xfff7f9f9),
              ),
            ),
            const Text(
              "Flutter Developer",
              style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w400,
                  color: Color(0xfff7f9f9)),
            ),
            const Divider(
              color: Color(0xfff7f9f9),
              height: 1,
              thickness: 2,
              indent: 57,
              endIndent: 47.5,
            ),
            const SizedBox(
              height: 23.5,
            ),
            Container(
              color: Colors.white,
              child: TextFormField(
                style: const TextStyle(
                    fontSize: 22,
                    color: Color(0xff056C5C),
                    fontWeight: FontWeight.w400),
                onChanged: (String? value) {
                  phone = value;
                  _activate();
                },
                decoration: const InputDecoration(
                  hintText: "phone number",
                  focusColor: Colors.white,
                  prefixIcon: Padding(
                    padding: EdgeInsets.only(left: 40, right: 27.11),
                    child: IconTheme(
                      data: IconThemeData(color: Colors.grey),
                      child: Icon(Icons.phone),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            Container(
              color: Colors.white,
              child: TextFormField(
                style: const TextStyle(
                    fontSize: 20,
                    color: Color(0xff056C5C),
                    fontWeight: FontWeight.w400),
                onChanged: (String? value) {
                  email = value;
                  _activate();
                },
                decoration: const InputDecoration(
                  focusColor: Colors.white,
                  hintText: "gmail address",
                  prefixIcon: Padding(
                    padding: EdgeInsets.only(left: 40, right: 27.11),
                    child: Icon(
                      Icons.mail,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 40,
                      vertical: 15,
                    ),
                    side: const BorderSide(
                      width: 1.5,
                      color: Colors.white,
                    )),
                onPressed: isActive
                    ? () {
                        if (phone != null && email != null) {
                          controllEmailPhone(phone!, email!);
                        }
                      }
                    : null,
                child: const Text(
                  "sign in",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
