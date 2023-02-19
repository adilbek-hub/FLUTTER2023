import 'package:flutter/material.dart';

void main() {
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
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 253, 233, 47),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 253, 233, 47),
        centerTitle: true,
        title: Text(
          'Тапшырма - 3'.toUpperCase(),
          style:
              const TextStyle(color: Colors.black, fontWeight: FontWeight.w700),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              'I\'m rich',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 40,
                  fontWeight: FontWeight.w100,
                  fontFamily: 'AlumniSansCollegiateOne'),
            ),
            Text(
              'I\'m rich',
              style: TextStyle(
                  color: Colors.pink,
                  fontSize: 40,
                  fontWeight: FontWeight.w100,
                  fontFamily: 'AlumniSansCollegiateOne'),
            ),
            SizedBox(
              height: 200,
              width: 200,
              child: Image(
                image: AssetImage('assets/images/briliant.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
