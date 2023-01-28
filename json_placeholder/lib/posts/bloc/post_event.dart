part of 'post_bloc.dart';

abstract class PostEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class PostFetched extends PostEvent {}

class RemoveItemEvent extends PostEvent {
  final remove;
  RemoveItemEvent(this.remove);

  mapEventToState() {}
}
