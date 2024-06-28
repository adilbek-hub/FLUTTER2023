import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:practice_namito/features/data/model/top_products.dart';
import 'package:practice_namito/features/data/repo/like_toggle.dart';
import 'package:practice_namito/features/data/repo/top_products.dart';
import 'package:practice_namito/features/presentation/pages/login/login_screen.dart';
import 'package:practice_namito/features/presentation/pages/profile_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late Future<List<TopProduct>> topProducts;
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
      body: FutureBuilder<List<TopProduct>>(
        future: topProducts,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(child: Text('No products found'));
          } else {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                final product = snapshot.data![index];
                final isFavorite = favoriteProducts[product.id] ?? false;
                return Stack(
                  children: [
                    Card(
                      child: ListTile(
                        leading: Text('ID: ${product.id}'),
                        title: Text(product.name),
                        subtitle: Text(product.description),
                        trailing: Text('\$${product.price.price}'),
                      ),
                    ),
                    Positioned(
                      right: 8,
                      top: 8,
                      child: InkWell(
                        onTap: () => _toggleFavorite(productId: product.id),
                        child: CircleAvatar(
                          child: Icon(
                            isFavorite ? Icons.favorite : Icons.favorite_border,
                            color: isFavorite ? Colors.red : null,
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              },
            );
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const ProfilePage()));
        },
        child: const Icon(Icons.arrow_forward_ios_outlined),
      ),
    );
  }
}
