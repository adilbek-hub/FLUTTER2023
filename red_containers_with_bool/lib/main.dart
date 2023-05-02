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
        useMaterial3: true,
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}
//Биринчи InkWell виджетинде, isTrue чын болгондо контейнердин фон түсү Colors.red болуп коюлат.
// Бул контейнерди таптаганда кызарып кетет дегенди билдирет.Ошо сыяктуу эле, экинчи InkWell виджетинде, 
//isTrue жалган болгондо контейнердин фон түсү Colors.red болуп коюлат. Бул контейнерди таптаганда 
//кызарып кетет дегенди билдирет.
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isTrue = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MyHomePage'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                setState(() {
                  isTrue = true;
                  print(isTrue);
                });
              },
              child: Container(
                width: 50,
                height: 50,
                color: isTrue == true ? Colors.red : Colors.grey,
              ),
            ),
            const SizedBox(height: 20),
            InkWell(
              onTap: () {
                setState(() {
                  isTrue = false;
                  print(isTrue);
                });
              },
              child: Container(
                width: 50,
                height: 50,
                color: isTrue == false ? Colors.red : Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
