part of 'login_bloc.dart';

sealed class LoginState extends Equatable {
  const LoginState();

  @override
  List<Object> get props => [];
}

final class LoginInitial extends LoginState {}

final class LoginLoading extends LoginState {
  const LoginLoading({required this.child});
  final Widget child;
  @override
  List<Object> get props => [child];
}

final class LoginSuccess extends LoginState {}

final class LoginError extends LoginState {
  const LoginError({required this.errorMessage});
  final String errorMessage;
}
