part of 'user_bloc.dart';

abstract class UserState extends Equatable {
  const UserState();
}

class UserLoadingState extends UserState {
  @override
  List<Object?> get props => [];
}

class UserLoadedState extends UserState {
  const UserLoadedState(this.users);
  final List<UserModel> users;

  @override
  List<Object?> get props => [users, users.length];
}

class UserErrorState extends UserState {
  const UserErrorState(this.error);
  final String error;

  @override
  List<Object?> get props => [error];
}
