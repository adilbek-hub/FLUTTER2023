import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:like_lalafo/features/presentation/apptext/app_text.dart';
import 'package:like_lalafo/features/presentation/pages/home/widget/banner.dart';
import 'package:like_lalafo/features/presentation/pages/home/widget/categories.dart';
import 'package:like_lalafo/features/presentation/pages/home/widget/featured_new_choose_button.dart';
import 'package:like_lalafo/features/presentation/pages/home/widget/flat_rent.dart';
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
                children: [
                  SizedBox(height: 20),
                  SearchFilter(),
                  SizedBox(height: 28),
                  SeeAllCategoriesTextButton(),
                  SizedBox(height: 20),
                  Categories(),
                  SizedBox(height: 20),
                  Banners(),
                  SizedBox(height: 20),
                  AppText(
                    title: 'Аренда квартир',
                    textType: TextType.subtitle,
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                  ),
                  SizedBox(height: 20),
                  FlatRent(),
                  FeaturedNewChooseButton(),
                ],
              ),
            ),
            SliverGrid.builder(
              itemCount: 30,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2),
              itemBuilder: (BuildContext context, int index) {
                return const Card();
              },
            )
          ],
        ),
      ),
    );
  }
}
