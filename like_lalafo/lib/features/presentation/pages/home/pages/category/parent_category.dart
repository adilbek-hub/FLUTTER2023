import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:like_lalafo/features/presentation/pages/home/model/category.dart';

@RoutePage()
class ParentCategoryPage extends StatelessWidget {
  final Category category;

  const ParentCategoryPage({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    double totalSubcategoryPrice = category.subcategories
        .map((subcategory) => subcategory.price)
        .reduce((value, element) => value + element);

    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: const Icon(Icons.arrow_back_ios_new),
        ),
        title: Text(category.name),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Все в категории ${category.name}',
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              'Общая сумма подкатегорий: $totalSubcategoryPrice',
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: category.subcategories.length,
              itemBuilder: (context, index) {
                final subcategory = category.subcategories[index];
                return ListTile(
                  title: Text(subcategory.name),
                  subtitle: Text('Цена: ${subcategory.price.toString()}'),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
