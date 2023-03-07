import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final String assetName1 = 'assets/icons/Vector.svg';
  final String assetName2 = 'assets/icons/Vector.svg';
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool disable = true;

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
                controller: nameController,
                style: const TextStyle(
                    fontSize: 22,
                    color: Color(0xff056C5C),
                    fontWeight: FontWeight.w400),
                onChanged: (value) {},
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
                onChanged: (value) {},
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
                onPressed: () {},
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
