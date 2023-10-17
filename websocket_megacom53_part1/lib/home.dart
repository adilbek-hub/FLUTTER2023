import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String name = '';
  String price = '';
  webSocketFun() async {
    print('object');
    final wsUrl = Uri.parse('wss://stream.binance.com:9443/ws/etheur@trade');
    var channel = WebSocketChannel.connect(wsUrl);

    channel.stream.listen((message) {
      print(message.runtimeType);
      Map valueMap = json.decode(message);
      print("MMMMMMMM$valueMap");
      print(valueMap.runtimeType);
      name = valueMap["s"];
      price = valueMap["p"];
      print(name);
      print(price);
      setState(() {});
    });
  }

  @override
  void initState() {
    webSocketFun();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              name,
              style: TextStyle(
                fontSize: 25,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              price,
              style: TextStyle(
                fontSize: 25,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
