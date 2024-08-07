import 'package:flutter/material.dart';
import 'package:like_lalafo/features/presentation/apptext/app_text.dart';
import 'package:like_lalafo/features/presentation/pages/announsements/model/announsemmentmodel.dart';
import 'package:like_lalafo/features/presentation/pages/announsements/pages/announsementsubcategory_page.dart';

class AnnounSementCatgoryView extends StatelessWidget {
  const AnnounSementCatgoryView({
    super.key,
    this.categoryannounsement,
  });

  final CategoryAnnounsement? categoryannounsement;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12, top: 10, bottom: 10),
      child: Column(
        children: [
          GestureDetector(
            onTap: categoryannounsement!.children != null
                ? () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => AnnounSementsSubCategoryPage(
                            subCategoryName: categoryannounsement!.name,
                            subcategory: categoryannounsement!.children!)))
                : null,
            child: Row(
              children: [
                AppText(
                  title: categoryannounsement!.name,
                  textType: TextType.subtitle,
                  color: Colors.black,
                ),
              ],
            ),
          ),
          const Divider(color: Colors.grey, thickness: 0.5),
        ],
      ),
    );
  }
}
