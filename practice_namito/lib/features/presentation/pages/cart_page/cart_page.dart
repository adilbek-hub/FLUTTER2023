import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:practice_namito/features/presentation/pages/cart_page/bloc/get_product_bloc.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Cart Page'),
        ),
        body: BlocBuilder<GetProductBloc, GetProductState>(
          builder: (context, state) {
            if (state is GetProductLoading) {
              return const CircularProgressIndicator.adaptive();
            } else if (state is GetProductSuccess) {
              return Center(
                  child: Text(state.getCartProductModel.user.toString()));
            } else if (state is GetProductError) {
              return Center(child: Text(state.message));
            } else {
              return const Text('Error');
            }
          },
        ));
  }
}
