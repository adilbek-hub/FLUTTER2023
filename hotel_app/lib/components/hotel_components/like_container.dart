import 'package:flutter/material.dart';

class LikeContainer extends StatelessWidget {
  const LikeContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 149,
          height: 29,
          color: const Color(0xfffff4cc),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.star,
                size: 15,
                color: Color(0xffffa800),
              ),
              Text(
                '5 Превосходно',
                style: TextStyle(
                  color: Color(0xffffa800),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
