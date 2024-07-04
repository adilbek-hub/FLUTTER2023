import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:practice_namito/features/presentation/pages/login/login_screen.dart';
import 'package:practice_namito/features/presentation/pages/profile_page.dart';
import 'package:practice_namito/features/presentation/pages/top_product_page/like_bloc/like_bloc.dart';
import 'package:practice_namito/features/presentation/pages/top_product_page/top_products_bloc/top_product_bloc.dart';

class TopProductPage extends StatefulWidget {
  const TopProductPage({super.key});

  @override
  State<TopProductPage> createState() => _TopProductPageState();
}

class _TopProductPageState extends State<TopProductPage> {
  @override
  void initState() {
    super.initState();
    // Ensure the event is added after the widget is built
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<TopProductBloc>().add(const GetTopProductEvent());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Top Product Page'),
        actions: [
          InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginScreen()));
              },
              child: const CircleAvatar(radius: 60, child: Text('login'))),
          InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ProfilePage()));
              },
              child: const CircleAvatar(radius: 60, child: Text('logout'))),
        ],
      ),
      body: BlocBuilder<TopProductBloc, TopProductState>(
        builder: (context, state) {
          if (state is TopProductLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is TopProductSuccess) {
            return TopProducts(state: state);
          } else if (state is TopProductError) {
            return Center(child: Text(state.message));
          } else {
            return const SizedBox.shrink();
          }
        },
      ),
    );
  }
}

class TopProducts extends StatelessWidget {
  const TopProducts({
    super.key,
    required this.state,
  });

  final TopProductSuccess state;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: state.topProduct.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemBuilder: (context, index) {
        final product = state.topProduct[index];
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Stack(
            children: [
              AspectRatio(
                aspectRatio: 1,
                child: Card(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('ID: ${product.id}'),
                      Text(product.name),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 8,
                right: 8,
                child: CircleAvatar(
                  child: Icon(state is LikeSuccess
                      ? Icons.favorite
                      : Icons.favorite_border),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
