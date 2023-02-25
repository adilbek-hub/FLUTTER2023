import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.blue),
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
  int index = 0;
  void koshuu() {
    setState(() {
      index = index + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView.builder(
            itemCount: 5,
            itemBuilder: (BuildContext, context) {
              return const ListTile(
                shape: Border(
                  bottom: BorderSide(
                    color: Colors.redAccent,
                    width: 2,
                  ),
                ),
                leading: Icon(Icons.mail),
                title: Text('Drawer'),
                trailing: Text('drawer'),
                subtitle: Text("counter"),
                visualDensity: VisualDensity.compact,
                style: ListTileStyle.list,
                iconColor: Colors.red,
                selectedColor: Colors.yellow,
                textColor: Colors.brown,
              );
            }),
      ),
      appBar: AppBar(
        title: const Center(
            child: Text('Counter App', style: TextStyle(color: Colors.black))),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "CounterApp",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepOrange),
            ),
            Text(
              "$index",
              style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.orangeAccent),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SecondPage(
                                count: index,
                              )));
                },
                child: const Text("Экинчи бетке өтүңүз"))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.redAccent,
        onPressed: () {
          koshuu();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

class SecondPage extends StatefulWidget {
  const SecondPage({super.key, required this.count});
  final int count;

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SecondPage"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "${widget.count}",
              style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 175, 7, 241)),
            )
          ],
        ),
      ),
    );
  }
}
