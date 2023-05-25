import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CriptoCoinTile extends StatelessWidget {
  const CriptoCoinTile({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ListTile(
      leading: SvgPicture.asset('assets/images/bitcoin.svg'),
      title: Text(
        'Bitcoin',
        style: theme.textTheme.titleMedium,
      ),
      subtitle: Text(
        '2000\$',
        style: theme.textTheme.titleSmall,
      ),
      trailing: const Icon(Icons.arrow_forward_ios),
      onTap: () => Navigator.of(context).pushNamed('/coin-screen'),
    );
  }
}
