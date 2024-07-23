import 'package:flutter/material.dart';
import 'package:like_lalafo/features/presentation/enams/assets_constants.dart';
import 'package:like_lalafo/features/presentation/pages/home/model/products.dart';
import 'package:like_lalafo/features/presentation/theme/color_constants.dart';

class ProductCard extends StatelessWidget {
  final Products product;

  const ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: null,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (product.imageUrl?.isNotEmpty ?? false)
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: SizedBox(
                  width: 180,
                  height: 180,
                  child: Image.asset(
                    product.imageUrl!,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          if (product.price != null)
            Text(
              '${product.price!} KGS',
              style: product.discountPrice != null
                  ? const TextStyle(
                      color: ColorConstants.grey,
                      decoration: TextDecoration.lineThrough,
                    )
                  : const TextStyle(
                      color: ColorConstants.black,
                      fontWeight: FontWeight.w700,
                    ),
            ),
          if (product.discountPrice != null)
            Text(
              '${product.discountPrice!} KGS',
              style: const TextStyle(
                color: ColorConstants.red,
                fontWeight: FontWeight.w700,
              ),
            ),
          if (product.vacation?.isNotEmpty ?? false)
            Text(
              product.vacation!,
              style: const TextStyle(
                color: ColorConstants.grey,
              ),
            ),
          if (product.description?.isNotEmpty ?? false)
            Text(product.description!),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 12,
                    child: Image.asset(AssetConstants.microsoft.png),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    decoration: BoxDecoration(
                      color: ColorConstants.blue,
                      borderRadius: BorderRadius.circular(3),
                    ),
                    child: Text(
                      'pro'.toUpperCase(),
                      style: const TextStyle(
                        color: ColorConstants.white,
                        fontSize: 9,
                      ),
                    ),
                  ),
                ],
              ),
              const Row(
                children: [
                  Icon(Icons.email, color: Colors.grey),
                  SizedBox(width: 10),
                  Icon(Icons.favorite, color: Colors.grey),
                ],
              ),
            ],
          ),
          const SizedBox(height: 30),
        ],
      ),
    );
  }
}
