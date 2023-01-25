part of 'posts_bloc.dart';

@immutable
abstract class PostsState {}

class PostsLoading extends PostsState {}

class PostsSuccess extends PostsState {
  PostsSuccess(this.posts);
  final List<Posts> posts;
}

class PostsError extends PostsState {
  PostsError(this.text);
  final String text;
}
