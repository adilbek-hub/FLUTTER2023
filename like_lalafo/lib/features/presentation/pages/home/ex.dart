import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:like_lalafo/features/presentation/pages/home/common.dart';

class WovenPage extends StatelessWidget {
  const WovenPage({super.key});

  static const pattern = [
    WovenGridTile(1),
    WovenGridTile(
      5 / 7,
      crossAxisRatio: 0.9,
      alignment: AlignmentDirectional.centerEnd,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: 'Woven',
      child: GridView.custom(
        gridDelegate: SliverWovenGridDelegate.count(
          crossAxisCount: 2,
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
          pattern: pattern,
        ),
        childrenDelegate: SliverChildBuilderDelegate(
          (context, index) {
            final tile = pattern[index % pattern.length];
            return Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start, // Align text to the left
              children: [
                ImageTile(
                  index: index,
                  // Consider using BoxFit.cover or BoxFit.contain here
                  width: (200 * tile.aspectRatio).ceil(),
                  height: 200,
                ),
                const SizedBox(height: 8),
                Text(
                  'Image description $index',
                  style: const TextStyle(fontSize: 16),
                  overflow: TextOverflow.ellipsis, // Truncate long text
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
