part of 'user_bloc.dart';

@immutable
abstract class UserEvent extends Equatable {
  const UserEvent();

  @override
  List<Object> get props => [];
}

class LoadingUserEvent extends UserEvent {
  @override
  List<Object> get props => [];
}
