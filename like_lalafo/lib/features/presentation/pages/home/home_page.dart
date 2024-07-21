import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:like_lalafo/features/presentation/apptext/app_text.dart';
import 'package:like_lalafo/features/presentation/pages/home/widget/banner.dart';
import 'package:like_lalafo/features/presentation/pages/home/widget/categories.dart';
import 'package:like_lalafo/features/presentation/pages/home/widget/featured_new_choose_button.dart';
import 'package:like_lalafo/features/presentation/pages/home/widget/flat_rent.dart';
import 'package:like_lalafo/features/presentation/pages/home/widget/search_filter.dart';
import 'package:like_lalafo/features/presentation/pages/home/widget/see_all_categories_text_button.dart';

class BackGroundTile extends StatelessWidget {
  final Color backgroundColor;
  final IconData icondata;
  const BackGroundTile(
      {super.key, required this.backgroundColor, required this.icondata});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}

//List of Cards with color and icon
List<Widget> _listTile = <Widget>[
  const BackGroundTile(backgroundColor: Colors.red, icondata: Icons.home),
  const BackGroundTile(backgroundColor: Colors.orange, icondata: Icons.ac_unit),
  const BackGroundTile(backgroundColor: Colors.pink, icondata: Icons.landscape),
  const BackGroundTile(backgroundColor: Colors.green, icondata: Icons.portrait),
  const BackGroundTile(
      backgroundColor: Colors.deepPurpleAccent, icondata: Icons.music_note),
  const BackGroundTile(
      backgroundColor: Colors.blue, icondata: Icons.access_alarms),
  const BackGroundTile(
      backgroundColor: Colors.indigo, icondata: Icons.satellite_outlined),
  const BackGroundTile(
      backgroundColor: Colors.cyan, icondata: Icons.search_sharp),
  const BackGroundTile(
      backgroundColor: Colors.yellowAccent, icondata: Icons.adjust_rounded),
  const BackGroundTile(
      backgroundColor: Colors.deepOrange, icondata: Icons.attach_money),
];

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
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: StaggeredGrid.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 4.0,
                  mainAxisSpacing: 4.0,
                  children: List<Widget>.generate(
                    products.length,
                    (int index) {
                      return Container(
                        color: Colors.green,
                        child: Column(
                          children: [
                            if (products[index].imageUrl?.isNotEmpty ?? false)
                              Center(
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(15),
                                  child: Image.network(
                                    products[index].imageUrl!,
                                  ),
                                ),
                              ),
                            if (products[index].title?.isNotEmpty ?? false)
                              Text(products[index].title!),
                            if (products[index].description?.isNotEmpty ??
                                false)
                              Text(products[index].description!),
                            Text(products[index].id.toString()),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Products {
  final int id;
  final String? title;
  final String? description;
  final String? imageUrl;

  Products(this.id, this.title, this.description, this.imageUrl);
}

List<Products> products = [
  Products(1, 'Product 1', 'Description 1', 'https://picsum.photos/200'),
  Products(2, 'Product 2', 'Description 2', 'https://picsum.photos/200'),
  Products(3, 'Product 3', null, 'https://picsum.photos/200'),
  Products(4, 'Product 4', 'Description 4', 'https://picsum.photos/200'),
  Products(5, 'Product 5', 'Description 5', 'https://picsum.photos/200'),
  Products(6, 'Product 6', 'Description 6', 'https://picsum.photos/200'),
  Products(7, 'Product 7', '', 'https://picsum.photos/200'),
  Products(8, 'Product 8', '', 'https://picsum.photos/200'),
  Products(9, 'Product 9', '', 'https://picsum.photos/200'),
  Products(10, 'Product 10', 'Description 10', 'https://picsum.photos/200'),
];
