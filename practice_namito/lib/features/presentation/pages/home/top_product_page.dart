import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:practice_namito/features/data/model/top_products.dart';
import 'package:practice_namito/features/data/repo/like_toggle.dart';
import 'package:practice_namito/features/data/repo/top_products.dart';
import 'package:practice_namito/features/presentation/pages/cart_page/cart_page.dart';
import 'package:practice_namito/features/presentation/pages/home/bloc/top_product_bloc.dart';
import 'package:practice_namito/features/presentation/pages/login/login_screen.dart';
import 'package:practice_namito/features/presentation/pages/product_detail_page/product_detail_page.dart';
import 'package:practice_namito/features/presentation/pages/profile_page.dart';

class TopProductPage extends StatefulWidget {
  const TopProductPage({super.key});

  @override
  State<TopProductPage> createState() => _TopProductPageState();
}

class _TopProductPageState extends State<TopProductPage> {
  late Future<List<TopProduct>> topProducts;
  bool? isLike;
  Map<int, bool> favoriteProducts = {}; // Продукт IDнин лайк абалын сактоо
  final LikeRepo likeRepo = LikeRepo(); // LikeRepo классын инстанция кылуу

  @override
  void initState() {
    super.initState();
    topProducts = TopProductRepo().fetchTopProducts();
  }

  void _toggleFavorite({required int productId}) async {
    try {
      final Response response = await likeRepo.like(productId);
      bool isLiked = response.data['message'] == 'Added to favorites.';
      setState(() {
        favoriteProducts[productId] = isLiked;
      });
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(response.data['message'])),
      );
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(e.toString()),
          action: SnackBarAction(
              label: 'OK',
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginScreen()));
              }),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: BlocBuilder<TopProductBloc, TopProductState>(
        builder: (context, state) {
          if (state is TopProductLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is TopProductSuccess) {
            return ListView.builder(
                itemCount: state.topProducts.length,
                itemBuilder: (context, index) {
                  final product = state.topProducts[index];
                  final isFavorite = favoriteProducts[product.id] ?? false;
                  isLike = isFavorite;
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return ProductDetailPage(id: product.id);
                          },
                        ),
                      );
                    },
                    child: Card(
                      child: ListTile(
                        leading: Text('ID: ${product.id}'),
                        title: Text(product.name),
                        subtitle: Text(product.price.price.toString()),
                        trailing: IconButton(
                          icon: Icon(isLike ?? false
                              ? Icons.favorite
                              : Icons.favorite_border),
                          onPressed: () {
                            _toggleFavorite(productId: product.id);
                          },
                        ),
                      ),
                    ),
                  );
                });
          } else {
            return const Center(child: Text('Error'));
          }
        },
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const CartPage()));
            },
            child: const Text('Show Cart'),
          ),
          FloatingActionButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const ProfilePage()));
            },
            child: const Icon(Icons.arrow_forward_ios_outlined),
          ),
        ],
      ),
    );
  }
}
