import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
import 'package:json_placeholder/posts/bloc/post_bloc.dart';
import 'package:json_placeholder/posts/view/posts_list.dart';

class PostsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'For PLATFORMS',
          )),
      body: BlocProvider(
        create: (_) => PostBloc(httpClient: http.Client())..add(PostFetched()),
        child: PostsList(),
      ),
    );
  }
}
