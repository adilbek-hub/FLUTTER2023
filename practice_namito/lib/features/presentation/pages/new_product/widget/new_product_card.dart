import 'package:flutter/material.dart';
import 'package:practice_namito/core/like_manager.dart';
import 'package:practice_namito/features/data/model/products.dart';
import 'package:practice_namito/features/presentation/pages/product_detail_page/product_detail_page.dart';

class NewProductCard extends StatelessWidget {
  const NewProductCard({
    super.key,
    required this.product,
  });

  final Products product;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProductDetailPage(
              productId: product.id ?? 0,
            ),
          ),
        );
      },
      child: Card(
          child: Stack(
        children: [
          Container(
            width: 151,
            height: 171,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
            child: Image.network(product.image!.first),
          ),
          Positioned(
            top: 7,
            right: 7,
            child: CircleAvatar(
              child: LikeButton(
                  productId: product.id ?? 0,
                  isLiked: product.isFavorite ?? false,
                  onLiked: (onLiked) => product.isFavorite = onLiked),
            ),
          ),
        ],
      )),
    );
  }
}
