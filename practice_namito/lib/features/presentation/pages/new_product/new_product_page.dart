import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:practice_namito/core/navigator.dart';
import 'package:practice_namito/features/data/repo/new_products_repo.dart';
import 'package:practice_namito/features/presentation/pages/new_product/bloc/new_product_bloc.dart';
import 'package:practice_namito/features/presentation/pages/new_product/bloc/new_product_event.dart';
import 'package:practice_namito/features/presentation/pages/new_product/bloc/new_product_state.dart';

class NewProductsPage extends StatelessWidget {
  const NewProductsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => NewProductBloc(NewProductsService())
        ..add(const NewProductsInitialEvent()),
      child: Scaffold(
        appBar: AppBar(title: const Text('New Products')),
        body: BlocBuilder<NewProductBloc, NewProductsState>(
          builder: (context, state) {
            if (state is NewProductLoading) {
              return const Center(child: CircularProgressIndicator());
            } else if (state is NewProductSuccess) {
              final products = state.dataNewProduct;
              return ListView.builder(
                itemCount: products.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      title: Text(products[index].name ?? ''),
                      onTap: () => navigateToProductDetail(
                          context, products[index].id ?? 0),
                    ),
                  );
                },
              );
            } else if (state is NewProductsError) {
              return Center(child: Text('Error: ${state.message}'));
            }
            return Container();
          },
        ),
      ),
    );
  }
}
