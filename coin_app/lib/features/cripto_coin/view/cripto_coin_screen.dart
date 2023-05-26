import 'package:flutter/material.dart';

class CriptoCoinScreen extends StatefulWidget {
  const CriptoCoinScreen({super.key});

  @override
  State<CriptoCoinScreen> createState() => _CriptoCoinScreenState();
}

class _CriptoCoinScreenState extends State<CriptoCoinScreen> {
  String? coinName;
  @override
  void didChangeDependencies() {
    final argm = ModalRoute.of(context)?.settings.arguments;
    assert(argm != null && argm is String, 'You must provide argm String');
    // Проверка аргументтин келгенин
    // if (argm == null) {
    //   print('You must provide argm');
    //   return;
    // }
    // if (argm is! String) {
    //   print('You must provide argm String');
    //   return;
    // }
    coinName = argm as String;
    setState(() {});
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(coinName ?? '...'),
      ),
    );
  }
}
