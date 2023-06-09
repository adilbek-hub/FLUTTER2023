import 'package:education/components/test_page_appbar_title.dart';
import 'package:education/components/test_slider.dart';
import 'package:education/constants/app_color.dart';
import 'package:education/model/usa_suroo.dart';
import 'package:flutter/material.dart';

class UsaTestPage extends StatefulWidget {
  const UsaTestPage({super.key, required this.usaSuroo});
  final List<UsaSuroo> usaSuroo;

  @override
  State<UsaTestPage> createState() => _UsaTestPageState();
}

class _UsaTestPageState extends State<UsaTestPage> {
  int index = 0;
  int tuuraJooptor = 0;
  int kataJooptor = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: AppColors.appforegroundColor,
        backgroundColor: AppColors.bgColor,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back)),
        title: TestPageAppBarTitle(
          kataJooptor: kataJooptor,
          tuuraJooptor: tuuraJooptor,
        ),
        elevation: 0,
      ),
      body: Column(
        children: [
          TestSlider(
            value: index,
          ),
          Center(
            child: Text(
              widget.usaSuroo[index].text,
              style: const TextStyle(fontSize: 20, height: 2),
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Image.asset(
                  'assets/images/usa/${widget.usaSuroo[index].image}.jpeg'),
            ),
          ),
        ],
      ),
    );
  }
}
