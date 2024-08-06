import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:like_lalafo/features/presentation/apptext/app_text.dart';
import 'package:like_lalafo/features/presentation/pages/home/widget/search_button.dart';

@RoutePage()
class AnnounSementsCategoryPage extends StatelessWidget {
  const AnnounSementsCategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> categories = [
      'Транспорт',
      'Недвижимость',
      'Услуги',
      'Дом и сад',
      'Техника и электроника',
      'Работа',
      'Личные вещи',
      'Спорт и хобби',
      'Животное',
      'Оборудование для бизнеса',
      'Детский мир',
      'Медтовары',
      'Иссык-Куль 2024',
      'Находки отдам даром',
    ];
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
          SliverList.builder(
            itemCount: categories.length,
            itemBuilder: (context, index) {
              final category = categories[index];
              return AnnounSementCatgoryView(category: category);
            },
          ),
        ],
      ),
    );
  }
}

class AnnounSementCatgoryView extends StatelessWidget {
  const AnnounSementCatgoryView({
    super.key,
    required this.category,
  });
  final String category;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      child: Column(
        children: [
          Row(
            children: [
              AppText(
                title: category,
                textType: TextType.subtitle,
                color: Colors.black,
              ),
            ],
          ),
          const Divider(color: Colors.grey, thickness: 0.5),
        ],
      ),
    );
  }
}
