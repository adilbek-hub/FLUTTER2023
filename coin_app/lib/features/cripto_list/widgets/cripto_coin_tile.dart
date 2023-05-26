import 'package:coin_app/repositories/cripto_coins/models/cripto_coin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CriptoCoinTile extends StatelessWidget {
  const CriptoCoinTile({
    super.key,
    required this.coin,
  });

  final CriptoCoin coin;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ListTile(
      leading: SvgPicture.asset('assets/images/bitcoin.svg'),
      title: Text(
        coin.name,
        style: theme.textTheme.titleMedium,
      ),
      subtitle: Text(
        '${coin.priceInUSD} \$',
        style: theme.textTheme.titleSmall,
      ),
      trailing: const Icon(Icons.arrow_forward_ios),
      onTap: () =>
          Navigator.of(context).pushNamed('/coin-screen', arguments: coin),
    );
  }
}
