import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:practice_namito/core/like_manager.dart';
import 'package:practice_namito/features/data/repo/like_toggle.dart';
import 'package:practice_namito/features/data/repo/product_detail_repo.dart';
import 'package:practice_namito/features/presentation/pages/product_detail_page/bloc/product_detail_bloc/product_detail_bloc.dart';
import 'package:practice_namito/features/presentation/pages/top_product_page/like_bloc/like_bloc.dart';

// ProductDetailPage классы
class ProductDetailPage extends StatelessWidget {
  final int productId;

  const ProductDetailPage({super.key, required this.productId});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ProductDetailBloc(
            productDetailRepo: ProductDetailRepo(),
          )..add(GetProductDetail(productId: productId)),
        ),
        BlocProvider(create: (_) => LikeBloc(LikeRepo())),
      ],
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Product Detail'),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () => Navigator.pop(context),
          ),
        ),
        body: BlocBuilder<ProductDetailBloc, ProductDetailState>(
          builder: (context, productDetailState) {
            if (productDetailState is ProductDetailLoading) {
              return const Center(child: CircularProgressIndicator());
            } else if (productDetailState is ProductDetailSuccess) {
              final product = productDetailState.productDetail;
              return Column(
                children: [
                  Text(product.name ?? ''),
                  Text(product.description ?? ''),
                  LikeButton(
                    productId: product.id ?? 0,
                    isLiked: product.isFavorite ?? false,
                    onLiked: (isLiked) {
                      product.isFavorite = isLiked;
                    },
                  ),
                ],
              );
            } else if (productDetailState is ProductDetailError) {
              return Center(
                  child: Text('Error: ${productDetailState.message}'));
            }
            return Container();
          },
        ),
      ),
    );
  }
}
