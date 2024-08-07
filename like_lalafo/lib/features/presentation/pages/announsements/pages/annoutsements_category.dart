import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:like_lalafo/features/presentation/apptext/app_text.dart';
import 'package:like_lalafo/features/presentation/pages/announsements/model/announsemmentmodel.dart';
import 'package:like_lalafo/features/presentation/pages/announsements/widget/announsementcategory_view.dart';
import 'package:like_lalafo/features/presentation/pages/home/widget/search_button.dart';

@RoutePage()
class AnnounSementsCategoryPage extends StatelessWidget {
  const AnnounSementsCategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            forceMaterialTransparency: false,
            pinned: true,
            leading: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.chevron_left,
                size: 35,
                color: Colors.grey,
              ),
            ),
            title: const AppText(
              title: 'Категория',
              textType: TextType.body,
              color: Colors.black,
              fontWeight: FontWeight.w600,
            ),
            centerTitle: true,
          ),
          const SliverAppBar(
            toolbarHeight: 0,
            pinned: true,
            flexibleSpace: Padding(
              padding: EdgeInsets.symmetric(horizontal: 12),
              child: SearchButton(
                width: 100,
                title: 'Поиск по категориям',
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: AppText(
                title: 'Выберите категорию',
                textType: TextType.header,
                color: Colors.black,
              ),
            ),
          ),
          SliverList.builder(
            itemCount: categoriesannounsement.length,
            itemBuilder: (context, index) {
              final category = categoriesannounsement[index];
              return AnnounSementCatgoryView(categoryannounsement: category);
            },
          ),
        ],
      ),
    );
  }
}
