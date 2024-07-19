import 'package:flutter/material.dart';
import 'package:like_lalafo/features/presentation/theme/color_constants.dart';

class FlatRent extends StatelessWidget {
  const FlatRent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 178,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 20,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Container(
                  width: 100,
                  height: 80,
                  decoration: BoxDecoration(
                    color: ColorConstants.grey.withOpacity(0.2),
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
                  color: ColorConstants.grey.withOpacity(0.2),
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
