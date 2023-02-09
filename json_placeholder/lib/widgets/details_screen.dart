import 'package:flutter/material.dart';

import 'package:json_placeholder/models/model.dart';

class DetailsScreenPage extends StatelessWidget {
  const DetailsScreenPage(
    this.post, {
    super.key,
  });
  final Post post;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(post.title),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text(post.id.toString()), Text(post.body)],
          ),
        ),
      ),
    );
  }
}
