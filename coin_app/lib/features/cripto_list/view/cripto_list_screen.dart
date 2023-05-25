import 'package:coin_app/features/cripto_list/widgets/widgets.dart';
import 'package:coin_app/repositories/cripto_coins/cripto_coins_repasitory.dart';
import 'package:flutter/material.dart';

class CriptoListScreen extends StatefulWidget {
  const CriptoListScreen({super.key});

  @override
  State<CriptoListScreen> createState() => _CriptoListScreenState();
}

class _CriptoListScreenState extends State<CriptoListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('COIN')),
      ),
      body: ListView.separated(
          itemCount: 10,
          separatorBuilder: (context, index) => const Divider(),
          itemBuilder: (context, index) {
            return const CriptoCoinTile();
          }),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.download),
        onPressed: () {
          CriptoCoinRepositories().getCoinsList();
        },
      ),
    );
  }
}
