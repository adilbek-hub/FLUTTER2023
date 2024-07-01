import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:practice_namito/features/data/model/add_card_model.dart';
import 'package:practice_namito/features/data/repo/cart_repo.dart';
import 'package:practice_namito/features/data/repo/top_products.dart';
import 'package:practice_namito/features/presentation/pages/home/bloc/top_product_bloc.dart';
import 'package:practice_namito/features/presentation/pages/home/top_product_page.dart';
import 'package:practice_namito/features/presentation/pages/product_detail_page/bloc/add_to_card_bloc/add_to_card_bloc.dart';

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
        BlocProvider(
          create: (context) => AddToCardBloc(cardRepo: CartRepo())
            ..add(AddToCard(addCartModel: AddCartModel())),
        )
      ],
      child: const MaterialApp(
        home: TopProductPage(),
      ),
    );
  }
}
