import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:practice_namito/features/data/repo/product_detail_repo.dart';
import 'package:practice_namito/features/presentation/pages/product_detail_page/bloc/product_detail_bloc/product_detail_bloc.dart';

class ProductDetailPage extends StatelessWidget {
  const ProductDetailPage({super.key, required this.productId});
  final int productId;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          ProductDetailBloc(productDetailRepo: ProductDetailRepo())
            ..add(GetProductDetail(productId: productId)),
      child: Scaffold(
        appBar: AppBar(title: const Text('Product Detail')),
        body: BlocBuilder<ProductDetailBloc, ProductDetailState>(
          builder: (context, state) {
            if (state is ProductDetailLoading) {
              return const Center(child: CircularProgressIndicator());
            } else if (state is ProductDetailSuccess) {
              return Column(
                children: [
                  Text(state.productDetail.name ?? ''),
                  Text(state.productDetail.description ?? ''),
                ],
              );
            } else if (state is ProductDetailError) {
              return Center(child: Text('Error: ${state.message}'));
            }
            return Container();
          },
        ),
      ),
    );
  }
}
