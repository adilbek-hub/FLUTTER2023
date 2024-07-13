import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:practice_namito/core/like_manager.dart';
import 'package:practice_namito/features/data/repo/like_toggle.dart';
import 'package:practice_namito/features/data/repo/new_products_repo.dart';
import 'package:practice_namito/features/presentation/pages/new_product/bloc/new_product_bloc.dart';
import 'package:practice_namito/features/presentation/pages/new_product/bloc/new_product_event.dart';
import 'package:practice_namito/features/presentation/pages/new_product/bloc/new_product_state.dart';
import 'package:practice_namito/features/presentation/pages/product_detail_page/product_detail_page.dart';
import 'package:practice_namito/features/presentation/pages/top_product_page/like_bloc/like_bloc.dart';

class NewProductsPage extends StatelessWidget {
  const NewProductsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => NewProductBloc(NewProductsService())
            ..add(const NewProductsInitialEvent()),
        ),
        BlocProvider(create: (_) => LikeBloc(LikeRepo())),
      ],
      child: Scaffold(
        appBar: AppBar(title: const Text('New Products')),
        body: BlocBuilder<NewProductBloc, NewProductsState>(
          builder: (context, newProductState) {
            if (newProductState is NewProductLoading) {
              return const Center(child: CircularProgressIndicator());
            } else if (newProductState is NewProductSuccess) {
              final products = newProductState.dataNewProduct;
              return RefreshIndicator.adaptive(
                onRefresh: () async => context
                    .read<NewProductBloc>()
                    .add(const NewProductsInitialEvent()),
                child: ListView.builder(
                  itemCount: products.length,
                  itemBuilder: (context, index) {
                    return ProductItem(
                      product: products[index],
                      onTap: () async {
                        final result = await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ProductDetailPage(
                              productId: products[index].id ?? 0,
                            ),
                          ),
                        );
                        if (result != null && result is bool) {
                          products[index].isFavorite = result;
                        }
                      },
                    );
                  },
                ),
              );
            } else if (newProductState is NewProductsError) {
              return Center(child: Text('Error: ${newProductState.message}'));
            }
            return Container();
          },
        ),
      ),
    );
  }
}
