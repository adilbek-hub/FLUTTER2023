import 'package:flutter/material.dart';

class FlatRent extends StatelessWidget {
  const FlatRent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 178, // Height of the horizontal list
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 20, // Number of items
        itemBuilder: (context, index) {
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Container(
                  width: 100,
                  height: 80,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Center(
                    child: Text('Item $index'),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Container(
                width: 100,
                height: 80,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Center(
                  child: Text('Item $index'),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
