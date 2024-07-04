import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:practice_namito/features/data/model/add_card_model.dart';
import 'package:practice_namito/features/data/repo/cart_repo.dart';
import 'package:practice_namito/features/data/repo/product_detail_repo.dart';
import 'package:practice_namito/features/presentation/pages/cart_page/bloc/get_product_bloc.dart';
import 'package:practice_namito/features/presentation/pages/cart_page/cart_page.dart';
import 'package:practice_namito/features/presentation/pages/product_detail_page/bloc/add_to_card_bloc/add_to_card_bloc.dart';
import 'package:practice_namito/features/presentation/pages/product_detail_page/bloc/product_detail_bloc/product_detail_bloc.dart';

class ProductDetailPage extends StatefulWidget {
  const ProductDetailPage({super.key, required this.id});
  final int id;

  @override
  State<ProductDetailPage> createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  late final ProductDetailBloc _productDetailBloc;
  late final AddToCardBloc _addToCardBloc;
  late final GetProductBloc _getProductBloc;
  late final CartRepo _cartRepo;

  @override
  void initState() {
    super.initState();
    _productDetailBloc =
        ProductDetailBloc(productDetailRepo: ProductDetailRepo())
          ..add(GetProductDetail(productId: widget.id));
    _cartRepo = CartRepo();
    _addToCardBloc = AddToCardBloc(cardRepo: _cartRepo);
    _getProductBloc = GetProductBloc(cardRepo: _cartRepo);
  }

  @override
  void dispose() {
    _productDetailBloc.close();
    _addToCardBloc.close();
    _getProductBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Detail'),
      ),
      body: MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => _productDetailBloc),
          BlocProvider(create: (context) => _addToCardBloc),
          BlocProvider(create: (context) => _getProductBloc),
        ],
        child: BlocBuilder<ProductDetailBloc, ProductDetailState>(
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
                        backgroundColor: Colors.amberAccent,
                      ),
                      onPressed: () {
                        final variant = AddCartModel(
                          productVariant:
                              state.productDetail.variants?.firstOrNull?.id,
                          quantity: 1,
                          toPurchase: true,
                        );
                        context
                            .read<AddToCardBloc>()
                            .add(AddToCard(addCartModel: variant));
                      },
                      child: const Text('Add To Cart'),
                    ),
                    BlocBuilder<AddToCardBloc, AddToCardState>(
                      builder: (context, state) {
                        if (state is AddToCardLoading) {
                          return const CircularProgressIndicator();
                        } else if (state is AddToCardSuccess) {
                          return const Text(
                              'Product added to cart successfully!');
                        } else if (state is AddToCardError) {
                          return Text('Error: ${state.message}');
                        }
                        return const SizedBox.shrink();
                      },
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueAccent,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const CartPage()),
                        );
                      },
                      child: const Text('View Cart'),
                    ),
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
      ),
    );
  }
}
