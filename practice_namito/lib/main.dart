import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:practice_namito/features/data/repo/top_products.dart';
import 'package:practice_namito/features/presentation/pages/home/bloc/top_product_bloc.dart';
import 'package:practice_namito/features/presentation/pages/home/top_product_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => TopProductBloc(topProductRepo: TopProductRepo())
            ..add(const GetTopProducts()),
        ),
      ],
      child: const MaterialApp(
        home: TopProductPage(),
      ),
    );
  }
}
