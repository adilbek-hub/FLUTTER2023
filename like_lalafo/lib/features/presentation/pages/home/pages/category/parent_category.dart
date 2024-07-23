import 'package:flutter/material.dart';
import 'package:like_lalafo/features/presentation/pages/home/model/category.dart';

// @RoutePage()
// class ParentCategoryPage extends StatelessWidget {
//   final Category category;

//   const ParentCategoryPage({super.key, required this.category});

//   @override
//   Widget build(BuildContext context) {
//     double totalSubcategoryPrice = category.children != null
//         ? category.children!
//             .map((subcategory) => subcategory.price)
//             .reduce((value, element) => value + element)
//         : 0.0;

//     return Scaffold(
//       appBar: AppBar(
//         leading: GestureDetector(
//           onTap: () => Navigator.pop(context),
//           child: const Icon(Icons.arrow_back_ios_new),
//         ),
//         title: Text(category.name),
//       ),
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Text(
//               'Все в категории ${category.name}',
//               style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//             ),
//           ),
//           if (category.children != null)
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 16.0),
//               child: Text(
//                 'Общая сумма подкатегорий: $totalSubcategoryPrice',
//                 style:
//                     const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
//               ),
//             ),
//           if (category.children != null)
//             Expanded(
//               child: ListView.builder(
//                 itemCount: category.children?.length,
//                 itemBuilder: (context, index) {
//                   final subcategory = category.children?[index];
//                   return Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 16),
//                     child: GestureDetector(
//                       onTap: () {
//                         if (subcategory.children != null &&
//                             subcategory.children!.isNotEmpty) {
//                           context.pushRoute(
//                               ChildCategoryRoute(children0: subcategory));
//                         } else {
//                           // Handle navigation to a page for subcategories without children
//                         }
//                       },
//                       child: ListTile(
//                         title: Text(subcategory!.name),
//                         subtitle: Text('Цена: ${subcategory.price.toString()}'),
//                       ),
//                     ),
//                   );
//                 },
//               ),
//             ),
//           if (category.children == null)
//             const Padding(
//               padding: EdgeInsets.all(16.0),
//               child: Text(
//                 'Подкатегории отсутствуют',
//                 style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
//               ),
//             ),
//         ],
//       ),
//     );
//   }
// }

// Виджет для отображения подкатегории
class ChildTile extends StatelessWidget {
  final Children child;

  const ChildTile({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(child.name),
      subtitle: Text('${child.price} KGS'),
      onTap: child.children != null
          ? () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ChildrenPage(children: child.children!),
                ),
              );
            }
          : null,
    );
  }
}

// Страница для отображения списка подкатегорий
class ChildrenPage extends StatelessWidget {
  final List<Children> children;

  const ChildrenPage({super.key, required this.children});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Подкатегории'),
      ),
      body: ListView.builder(
        itemCount: children.length,
        itemBuilder: (context, index) {
          return ChildTile(child: children[index]);
        },
      ),
    );
  }
}
