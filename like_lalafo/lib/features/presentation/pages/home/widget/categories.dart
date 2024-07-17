import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  const Categories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100, // Height of the horizontal list
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 20, // Number of items
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Column(
              children: [
                Container(
                  width: 100,
                  height: 40,
                  color: Colors.grey[300],
                  child: Center(
                    child: Text('Item $index'),
                  ),
                ),
                const SizedBox(height: 5),
                Container(
                  width: 100,
                  height: 40,
                  color: Colors.grey[300],
                  child: Center(
                    child: Text('Item $index'),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
