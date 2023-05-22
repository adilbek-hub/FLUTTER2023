import 'package:data_with_dio/fourth_variant_geolocator.dart';
import 'package:data_with_dio/geolocator_example.dart';
import 'package:data_with_dio/third_variant.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

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
      home: const FourthVariantGeolocator(),
    );
  }
}

//  Бул жерде Датаны функция менен алып келип initState менен иштеттик
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  dynamic res;
// Асинхронный fetchData объекттиси менен датаны алып келдик
  fetchData() async {
    final dio = Dio();
    await Future.delayed(const Duration(seconds: 6));
    res = await dio.get('sabak10_end_for_loop/lib/app/app.dart');
    setState(() {});
  }

// initState бул State классындагы метод ,бул методго fetchData()ны чакырганда анан
//fetchData объектиси биздин MyHomePage баракчада иштейт.
  @override
  void initState() {
    super.initState();
    fetchData();
  }

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
            res == null ? const CircularProgressIndicator() : Text('$res'),
          ],
        ),
      ),
    );
  }
}
