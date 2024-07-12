import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:practice_namito/core/navigator.dart';
import 'package:practice_namito/features/data/repo/like_toggle.dart';
import 'package:practice_namito/features/data/repo/top_product_repo.dart';
import 'package:practice_namito/features/presentation/pages/top_product_page/like_bloc/like_bloc.dart';
import 'package:practice_namito/features/presentation/pages/top_product_page/top_products_bloc/top_product_bloc.dart';

class TopProductsPage extends StatelessWidget {
  const TopProductsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (_) =>
                TopProductBloc(topProductsService: TopProductsService())
                  ..add(const GetTopProductEvent())),
        BlocProvider(create: (_) => LikeBloc(likeRepo: LikeRepo())),
      ],
      child: Scaffold(
        appBar: AppBar(title: const Text('Top Products')),
        body: BlocBuilder<TopProductBloc, TopProductState>(
          builder: (context, topProductState) {
            return BlocBuilder<LikeBloc, LikeState>(
              builder: (context, likeState) {
                if (topProductState is TopProductLoading) {
                  return const Center(child: CircularProgressIndicator());
                } else if (topProductState is TopProductSuccess) {
                  final products = topProductState.topProduct;
                  return ListView.builder(
                    itemCount: products.length,
                    itemBuilder: (context, index) {
                      final product = products[index];
                      bool isLiked = likeState is LikeSuccess &&
                          likeState.productId == product.id &&
                          likeState.isLiked;

                      return ListTile(
                        title: Text(product.name ?? ''),
                        onTap: () =>
                            navigateToProductDetail(context, product.id ?? 0),
                        trailing: IconButton(
                          icon: Icon(
                            Icons.thumb_up,
                            color: isLiked ? Colors.red : null,
                          ),
                          onPressed: () => context.read<LikeBloc>().add(
                              LikeProductEvent(productId: product.id ?? 0)),
                        ),
                      );
                    },
                  );
                } else if (topProductState is TopProductError) {
                  return Center(
                      child: Text('Error: ${topProductState.message}'));
                }
                return Container();
              },
            );
          },
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => navigateToNewProducts(context),
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}


// class TopProductsPage extends StatefulWidget {
//   const TopProductsPage({super.key});

//   @override
//   State<TopProductsPage> createState() => _TopProductsPageState();
// }

// class _TopProductsPageState extends State<TopProductsPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Top Product Page'),
//         actions: [
//           InkWell(
//             onTap: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (context) => LoginScreen()),
//               );
//             },
//             child: const CircleAvatar(radius: 60, child: Text('login')),
//           ),
//           InkWell(
//             onTap: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (context) => const ProfilePage()),
//               );
//             },
//             child: const CircleAvatar(radius: 60, child: Text('logout')),
//           ),
//         ],
//       ),
//       body: BlocBuilder<TopProductBloc, TopProductState>(
//         builder: (context, state) {
//           if (state is TopProductLoading) {
//             return const Center(child: CircularProgressIndicator());
//           } else if (state is TopProductSuccess) {
//             return BlocProvider(
//               create: (context) => LikeBloc(likeRepo: LikeRepo()),
//               child: TopProducts(state: state),
//             );
//           } else if (state is TopProductError) {
//             return Center(child: Text(state.message));
//           } else {
//             return const SizedBox.shrink();
//           }
//         },
//       ),
//     );
//   }
// }

// class TopProducts extends StatelessWidget {
//   const TopProducts({
//     super.key,
//     required this.state,
//   });

//   final TopProductSuccess state;

//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//       itemCount: state.topProduct.length,
//       scrollDirection: Axis.horizontal,
//       itemBuilder: (context, index) {
//         final topProduct = state.topProduct[index];
//         return Container(
//           width: 219,
//           height: 500,
//           color: Colors.red,
//           margin: const EdgeInsets.all(8.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Stack(
//                   children: [
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text('ID: ${topProduct.id}'),
//                         Text(topProduct.name ?? 'No Name'),
//                       ],
//                     ),
//                     Positioned(
//                       top: 8,
//                       right: 8,
//                       child: CircleAvatar(
//                         child: BlocProvider(
//                           create: (context) => LikeBloc(likeRepo: LikeRepo()),
//                           child: LikeButton(topProduct: topProduct),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         );
//       },
//     );
//   }
// }

// class LikeButton extends StatefulWidget {
//   final TopProduct topProduct;
//   const LikeButton({super.key, required this.topProduct});

//   @override
//   State<LikeButton> createState() => _LikeButtonState();
// }

// class _LikeButtonState extends State<LikeButton> {
//   late bool isLike;

//   @override
//   void initState() {
//     super.initState();
//     isLike = widget.topProduct.isFavorite!;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return BlocConsumer<LikeBloc, LikeState>(
//       listener: (context, state) {
//         if (state is LikeSuccess && state.productId == widget.topProduct.id) {
//           setState(() {
//             isLike = state.response == 'Added to favorites.';
//           });
//         } else if (state is Unauthorized) {
//           ScaffoldMessenger.of(context)
//             ..hideCurrentSnackBar()
//             ..showSnackBar(SnackBar(
//               content: Text(state.errorMessage),
//               action: SnackBarAction(
//                 label: 'Login',
//                 onPressed: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(builder: (context) => LoginScreen()),
//                   );
//                 },
//               ),
//             ));
//         }
//       },
//       builder: (context, state) {
//         return InkWell(
//           onTap: () {
//             context.read<LikeBloc>().add(
//                   LikeProductEvent(productId: widget.topProduct.id ?? 0),
//                 );
//           },
//           child: Icon(
//             Icons.favorite,
//             color: isLike ? Colors.red : Colors.grey,
//           ),
//         );
//       },
//     );
//   }
// }
