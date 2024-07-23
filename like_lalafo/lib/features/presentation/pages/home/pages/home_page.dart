import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:like_lalafo/features/presentation/apptext/app_text.dart';
import 'package:like_lalafo/features/presentation/pages/home/model/products.dart';
import 'package:like_lalafo/features/presentation/pages/home/widget/banner.dart';
import 'package:like_lalafo/features/presentation/pages/home/widget/categories.dart';
import 'package:like_lalafo/features/presentation/pages/home/widget/featured_new_choose_button.dart';
import 'package:like_lalafo/features/presentation/pages/home/widget/flat_rent.dart';
import 'package:like_lalafo/features/presentation/pages/home/widget/product_card.dart';
import 'package:like_lalafo/features/presentation/pages/home/widget/search_filter.dart';
import 'package:like_lalafo/features/presentation/pages/home/widget/see_all_categories_text_button.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
            const SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20),
                  SearchFilter(),
                  SizedBox(height: 28),
                  SeeAllCategoriesTextButton(),
                  SizedBox(height: 20),
                  Categories(),
                  SizedBox(height: 20),
                  Banners(),
                  SizedBox(height: 30),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: AppText(
                      title: 'Аренда квартир',
                      textType: TextType.subtitle,
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height: 20),
                  FlatRent(),
                  FeaturedNewChooseButton(),
                ],
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: StaggeredGrid.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16.0,
                  mainAxisSpacing: 4.0,
                  children: products
                      .map((product) => ProductCard(product: product))
                      .toList(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
