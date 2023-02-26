import 'package:flutter/material.dart';
import 'package:internetten_dio_arkyluu_data_alyp_keluu/menin_widgetim.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MeninWidgetim(),
    );
  }
}
