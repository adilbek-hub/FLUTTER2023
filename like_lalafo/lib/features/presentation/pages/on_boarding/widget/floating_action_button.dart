import 'package:flutter/material.dart';
import 'package:like_lalafo/features/presentation/pages/home/ex.dart';
import 'package:like_lalafo/theme/color_constants.dart';

class FloatingAction extends StatelessWidget {
  const FloatingAction({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: ColorConstants.green,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
      onPressed: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const WovenPage()));
      },
      child: const Icon(
        Icons.add,
        color: Colors.white,
        size: 30,
      ),
    );
  }
}
