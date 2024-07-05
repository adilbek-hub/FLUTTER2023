import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:practice_namito/features/data/repo/like_toggle.dart';

part 'like_event.dart';
part 'like_state.dart';

class LikeBloc extends Bloc<LikeEvent, LikeState> {
  final LikeRepo likeRepo;
  LikeBloc({required this.likeRepo}) : super(LikeInitial()) {
    on<LikeProductEvent>(
      (event, emit) async {
        emit(LikeLoading());
        try {
          final Response response =
              await likeRepo.like(productId: event.productId);
          emit(LikeSuccess(
              response: response.data["message"], productId: event.productId));
        } on DioException catch (e) {
          if (e.response?.statusCode == 401) {
            emit(Unauthorized(
              errorMessage: e.response?.data["detail"],
            ));
          } else {
            emit(LikeError(e.response?.data["detail"]));
          }
        }
      },
    );
  }
}
