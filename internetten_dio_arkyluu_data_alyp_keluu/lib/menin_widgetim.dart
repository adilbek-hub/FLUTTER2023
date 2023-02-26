import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class MeninWidgetim extends StatefulWidget {
  const MeninWidgetim({super.key});

  @override
  State<MeninWidgetim> createState() => _MeninWidgetimState();
}

class _MeninWidgetimState extends State<MeninWidgetim> {
  dynamic res;
  fetchData() async {
    final dio = Dio();
    await Future.delayed(const Duration(seconds: 8));
    res = await dio.get("https://jsonplaceholder.typicode.com/albums");
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: res == null ? const CircularProgressIndicator() : Text("$res"),
      ),
    );
  }
}
