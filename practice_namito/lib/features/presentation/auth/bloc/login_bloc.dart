import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:practice_namito/features/data/auth_service.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final Repo repo;
  LoginBloc({required this.repo}) : super(LoginInitial()) {
    on<PostLoginEvent>((PostLoginEvent event, Emitter<LoginState> emit) {
      emit(const LoginLoading(child: CircularProgressIndicator.adaptive()));
      try {
        emit(LoginSuccess());
      } catch (e) {
        emit(LoginError(errorMessage: e.toString()));
      }
    });
  }
}
