import 'package:coin_app/features/cripto_coin/view/cripto_coin_screen.dart';
import 'package:coin_app/features/cripto_list/view/cripto_list_screen.dart';

final routes = {
  '/': (context) => const CriptoListScreen(),
  '/coin-screen': (context) => const CriptoCoinScreen(),
};
