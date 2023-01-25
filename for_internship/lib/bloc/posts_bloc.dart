import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:for_internship/models/modelposts.dart';
import 'package:for_internship/services/posts_service.dart';
import 'package:meta/meta.dart';

part 'posts_event.dart';
part 'posts_state.dart';

class PostsBloc extends Bloc<PostsEvent, PostsState> {
  PostsBloc(this.service) : super(PostsLoading()) {
    on<PostsEvent>((event, emit) {});
    on<FetchPostsEvent>(_getPosts);
  }
  final PostsService service;
  Future<void> _getPosts(
      FetchPostsEvent event, Emitter<PostsState> emit) async {
    final posts = await service.getPosts();
    if (posts != null) {
      emit(PostsSuccess(posts));
    } else {
      emit(PostsError('Адилбек сенини кодунда ката бар'));
    }
  }
}
