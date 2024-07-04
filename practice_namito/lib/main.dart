import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:practice_namito/features/data/repo/like_toggle.dart';
import 'package:practice_namito/features/data/repo/login_repo.dart';
import 'package:practice_namito/features/data/repo/top_product_repo.dart';
import 'package:practice_namito/features/presentation/pages/login/bloc/login_bloc_bloc.dart';
import 'package:practice_namito/features/presentation/pages/top_product_page/like_bloc/like_bloc.dart';
import 'package:practice_namito/features/presentation/pages/top_product_page/top_product_page.dart';
import 'package:practice_namito/features/presentation/pages/top_product_page/top_products_bloc/top_product_bloc.dart';

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
          create: (context) => LoginBloc(loginRepo: LoginRepo()),
          child: Container(),
        ),
        BlocProvider(
          create: (context) =>
              TopProductBloc(topProductsService: TopProductsService()),
          child: Container(),
        ),
        BlocProvider(
          create: (context) => LikeBloc(likeRepo: LikeRepo()),
          child: Container(),
        )
      ],
      child: const MaterialApp(
        home: TopProductPage(),
      ),
    );
  }
}
