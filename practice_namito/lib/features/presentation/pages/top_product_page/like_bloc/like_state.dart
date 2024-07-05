part of 'like_bloc.dart';

sealed class LikeState extends Equatable {
  const LikeState();

  @override
  List<Object> get props => [];
}

final class LikeInitial extends LikeState {}

class LikeLoading extends LikeState {}

class LikeSuccess extends LikeState {
  final String response;
  final int productId;

  const LikeSuccess({required this.response, required this.productId});
}

class LikeError extends LikeState {
  const LikeError(this.error);
  final String error;

  @override
  List<Object> get props => [error];
}

class Unauthorized extends LikeState {
  final String errorMessage;

  const Unauthorized({required this.errorMessage});
}
