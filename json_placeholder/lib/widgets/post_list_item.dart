import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:json_placeholder/models/model.dart';
import 'package:json_placeholder/widgets/details_screen.dart';

class PostListItem extends StatelessWidget {
  const PostListItem({Key? key, required this.post}) : super(key: key);

  final Post post;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Column(
      children: [
        Card(
          child: Slidable(
            endActionPane: ActionPane(motion: const BehindMotion(), children: [
              SlidableAction(
                  backgroundColor: Colors.red,
                  icon: Icons.delete,
                  label: 'Delete',
                  onPressed: ((context) {}))
            ]),
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
        ),
      ],
    );
  }
}
