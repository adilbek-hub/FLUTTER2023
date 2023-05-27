import 'package:coin_app/features/cripto_list/widgets/widgets.dart';
import 'package:coin_app/repositories/cripto_coins/cripto_coins_repasitory.dart';
import 'package:coin_app/repositories/cripto_coins/models/cripto_coin.dart';
import 'package:flutter/material.dart';

class CriptoListScreen extends StatefulWidget {
  const CriptoListScreen({super.key});

  @override
  State<CriptoListScreen> createState() => _CriptoListScreenState();
}

class _CriptoListScreenState extends State<CriptoListScreen> {
  List<CriptoCoin>? _criptoCoinsList;
  @override
  void initState() {
    _loadCriptoCoints();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('COIN')),
      ),
      body: (_criptoCoinsList == null)
          ? const Center(child: CircularProgressIndicator())
          : ListView.separated(
              itemCount: _criptoCoinsList!.length,
              separatorBuilder: (context, index) => const Divider(),
              itemBuilder: (context, index) {
                final coin = _criptoCoinsList![index];
                return CriptoCoinTile(
                  coin: coin,
                );
              }),
    );
  }

  Future<void> _loadCriptoCoints() async {
    _criptoCoinsList = await CriptoCoinRepositories().getCoinsList();
    setState(() {});
  }
}
