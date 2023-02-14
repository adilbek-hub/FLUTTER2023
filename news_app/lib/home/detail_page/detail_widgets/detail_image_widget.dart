import 'package:flutter/material.dart';

class DetailImageWidget extends StatelessWidget {
  const DetailImageWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 300,
      child: Image.asset('assets/images/balastanImage.png', fit: BoxFit.cover),
    );
  }
}
