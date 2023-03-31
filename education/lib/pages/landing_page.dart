import 'package:education/constants/app_color.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 200,
            color: Colors.red,
            clipBehavior: Clip.antiAlias,
          ),
        ],
      ),
    );
  }
}
