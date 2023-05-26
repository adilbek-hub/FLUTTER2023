import 'package:coin_app/features/cripto_list/widgets/widgets.dart';
import 'package:coin_app/repositories/cripto_coins/cripto_coins_repasitory.dart';
import 'package:coin_app/repositories/cripto_coins/models/cripto_coin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CriptoListScreen extends StatefulWidget {
  const CriptoListScreen({super.key});

  @override
  State<CriptoListScreen> createState() => _CriptoListScreenState();
}

class _CriptoListScreenState extends State<CriptoListScreen> {
  List<CriptoCoin>? _criptoCoinsList;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('COIN')),
      ),
      body: ListView.separated(
          itemCount: 10,
          separatorBuilder: (context, index) => const Divider(),
          itemBuilder: (context, index) {
            const coinName1 = 'Bitcoin';
            // final coin = _criptoCoinsList![index];
            // final coinName = coin.name;
            return ListTile(
              leading: SvgPicture.asset('assets/images/bitcoin.svg'),
              title: Text(
                coinName1,
                style: theme.textTheme.titleMedium,
              ),
              subtitle: Text(
                '2000\$',
                style: theme.textTheme.titleSmall,
              ),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () => Navigator.of(context)
                  .pushNamed('/coin-screen', arguments: coinName1),
            );
          }),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.download),
        onPressed: () async {
          _criptoCoinsList = await CriptoCoinRepositories().getCoinsList();
          // Экран список келгенде обнавляйтетилиш үчүн   setState(() {});
          setState(() {});
        },
      ),
    );
  }
}
