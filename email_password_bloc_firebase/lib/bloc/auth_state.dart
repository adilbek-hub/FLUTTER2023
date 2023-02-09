part of 'auth_bloc.dart';

abstract class AuthState extends Equatable {
  const AuthState();

  @override
  List<Object> get props => [];
}

class Loading extends AuthState {
  @override
  List<Object> get props => [];
}

class Success extends AuthState {}

class UnAuthenticated extends AuthState {
  @override
  List<Object> get props => [];
}
