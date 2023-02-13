import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:news_app/models/news_model.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({
    Key? key,
    required this.userModel,
  }) : super(key: key);
  final NewsModel userModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text(userModel.title),
          Text(userModel.description),
          Text(userModel.author)
        ],
      ),
    );
  }
}
