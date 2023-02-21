import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:news_app/home/detail_page/detail_widgets/detail_image_widget.dart';
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
          const DetailImageWidget(),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 30,
                  height: 20,
                  decoration: const BoxDecoration(
                    color: Colors.yellow,
                  ),
                  child: const Text(
                    'new',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                const Text('14.02.2023 | 02:35:59'),
              ],
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 20, top: 10, right: 20, bottom: 15),
            child: Text(
              userModel.title,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
          ),
          Text(
            userModel.description,
          ),
          const SizedBox(
            height: 10,
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Text(
              userModel.author,
              style: const TextStyle(
                  fontStyle: FontStyle.italic, fontWeight: FontWeight.w800),
            ),
          )
        ],
      ),
    );
  }
}
