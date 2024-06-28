import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:practice_namito/features/data/repo/product_detail_repo.dart';
import 'package:practice_namito/features/presentation/pages/product_detail_page/bloc/product_detail_bloc.dart';

class ProductDetailPage extends StatefulWidget {
  const ProductDetailPage({super.key, required this.id});
  final int id;

  @override
  State<ProductDetailPage> createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  late final ProductDetailBloc _productDetailBloc;
  @override
  void initState() {
    super.initState();
    _productDetailBloc =
        ProductDetailBloc(productDetailRepo: ProductDetailRepo())
          ..add(GetProductDetail(productId: widget.id));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Detail'),
      ),
      body: BlocBuilder<ProductDetailBloc, ProductDetailState>(
        bloc: _productDetailBloc,
        builder: (context, state) {
          if (state is ProductDetailLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is ProductDetailSuccess) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('ID: ${state.productDetail.id}'),
                  const SizedBox(height: 15),
                  Text('Product Name: ${state.productDetail.name}'),
                  const SizedBox(height: 30),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.amberAccent),
                      onPressed: () {},
                      child: const Text('Add To Cart'))
                ],
              ),
            );
          } else if (state is ProductDetailError) {
            return Center(
              child: Text(state.message),
            );
          } else {
            return const SizedBox.shrink();
          }
        },
      ),
    );
  }
}
