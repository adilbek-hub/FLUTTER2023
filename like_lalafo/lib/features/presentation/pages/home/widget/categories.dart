import 'package:flutter/material.dart';
import 'package:like_lalafo/features/presentation/apptext/app_text.dart';
import 'package:like_lalafo/features/presentation/pages/home/model/category.dart';
import 'package:like_lalafo/features/presentation/theme/color_constants.dart';

class Categories extends StatefulWidget {
  const Categories({
    super.key,
  });

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    final firstRowItems = categories.sublist((categories.length / 2).ceil());
    final secondRowItems =
        categories.sublist(0, (categories.length / 2).ceil());

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: firstRowItems
                .map(
                  (f) => GestureDetector(
                    child: Container(
                      margin: const EdgeInsets.all(4.0),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10.0, vertical: 7.0),
                      decoration: BoxDecoration(
                        color: ColorConstants.grey.withOpacity(0.2),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                      ),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 40,
                            height: 40,
                            child: Image.network(f.image),
                          ),
                          const SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AppText(
                                textType: TextType.subtitle,
                                title: f.name,
                              ),
                              AppText(
                                textType: TextType.promocode,
                                title: f.price.toString(),
                                color: ColorConstants.grey,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                )
                .toList(),
          ),
          Row(
            children: secondRowItems
                .map(
                  (f) => GestureDetector(
                    child: Container(
                      margin: const EdgeInsets.all(2.0),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10.0, vertical: 7.0),
                      decoration: BoxDecoration(
                        color: ColorConstants.grey.withOpacity(0.2),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                      ),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 40,
                            height: 40,
                            child: Image.network(f.image),
                          ),
                          const SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AppText(
                                textType: TextType.subtitle,
                                title: f.name,
                              ),
                              AppText(
                                textType: TextType.promocode,
                                title: f.price.toString(),
                                color: ColorConstants.grey,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                )
                .toList(),
          ),
        ],
      ),
    );
  }
}
