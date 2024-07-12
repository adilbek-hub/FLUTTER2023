import 'package:flutter/material.dart';
import 'package:practice_namito/features/presentation/pages/new_product/new_product_page.dart';
import 'package:practice_namito/features/presentation/pages/product_detail_page/product_detail_page.dart';
import 'package:practice_namito/features/presentation/pages/top_product_page/top_product_page.dart';

void navigateToNewProducts(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const NewProductsPage()),
  );
}

void navigateToTopProducts(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const TopProductsPage()),
  );
}

void navigateToProductDetail(BuildContext context, int productId) {
  Navigator.push(
    context,
    MaterialPageRoute(
        builder: (context) => ProductDetailPage(productId: productId)),
  );
}
