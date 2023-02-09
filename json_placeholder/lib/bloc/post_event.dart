part of 'post_bloc.dart';

abstract class PostEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class PostFetched extends PostEvent {}

class UserDeleteEvent extends Equatable {
  const UserDeleteEvent(this.index);
  final int index;

  @override
  List<Object?> get props => [];
}
