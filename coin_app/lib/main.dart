import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CriptocurrentList',
      theme: ThemeData(
        textTheme: TextTheme(
          titleMedium: const TextStyle(
            color: Colors.white,
            fontSize: 25,
          ),
          titleSmall: TextStyle(
            color: Colors.white.withOpacity(0.5),
            fontSize: 20,
          ),
        ),
        listTileTheme: const ListTileThemeData(iconColor: Colors.white),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        scaffoldBackgroundColor: Colors.grey,
        useMaterial3: true,
      ),
      routes: {
        '/': (context) => const CriptoListScreen(),
        '/coin-screen': (context) => const CriptoCoinScreen(),
      },
    );
  }
}

class CriptoListScreen extends StatefulWidget {
  const CriptoListScreen({super.key});

  @override
  State<CriptoListScreen> createState() => _CriptoListScreenState();
}

class _CriptoListScreenState extends State<CriptoListScreen> {
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
          }),
    );
  }
}

class CriptoCoinScreen extends StatelessWidget {
  const CriptoCoinScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CriptoCoinScreen'),
      ),
    );
  }
}
