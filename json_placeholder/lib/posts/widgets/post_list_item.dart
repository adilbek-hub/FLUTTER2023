import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:json_placeholder/posts/models/models.dart';
import 'package:json_placeholder/posts/widgets/details_screen.dart';

class PostListItem extends StatelessWidget {
  const PostListItem({Key? key, required this.post}) : super(key: key);

  final Post post;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Column(
      children: [
        Card(
          child: ListTile(
            leading: Text('${post.id}', style: textTheme.caption),
            title: Text(post.title),
            isThreeLine: true,
            subtitle: Text(post.body),
            dense: true,
            onTap: (() {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: ((context) => DetailsScreenPage(post))));
            }),
          ),
        ),
      ],
    );
  }
}
