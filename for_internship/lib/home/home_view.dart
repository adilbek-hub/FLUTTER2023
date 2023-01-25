import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:for_internship/bloc/posts_bloc.dart';
import 'package:for_internship/components/loading_widget.dart';
import 'package:for_internship/models/modelposts.dart';
import 'package:for_internship/services/posts_service.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PostsBloc(postsService)..add(FetchPostsEvent()),
      child: PostsView(),
    );
  }
}

class PostsView extends StatelessWidget {
  const PostsView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<PostsBloc, PostsState>(
        builder: (context, state) {
          if (state is PostsLoading) {
            return LoadingWidget();
          } else if (state is PostsSuccess) {
            return PostsSuccessWidget(state.posts);
          } else if (state is PostsError) {
            return ErrorWidget(state.text);
          } else {
            return ErrorWidget('Unknown Error');
          }
        },
      ),
    );
  }
}

class PostsSuccessWidget extends StatelessWidget {
  const PostsSuccessWidget(this.posts, {super.key});
  final List<Posts> posts;
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
