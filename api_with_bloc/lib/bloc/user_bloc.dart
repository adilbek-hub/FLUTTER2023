import 'package:api_with_bloc/models/model.dart';
import 'package:api_with_bloc/repo/repository.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final UserRepo _userRepo;
  List<UserModel>? users;
  UserBloc(this._userRepo) : super(UserLoadingState()) {
    on<LoadingUserEvent>((event, emit) async {
      emit(UserLoadingState());
      try {
        final users = await _userRepo.userQuests();
        emit(UserLoadedState(users!));
      } catch (e) {
        emit(UserErrorState(e.toString()));
      }
      print('UserLoading');

      print('userLoaded');
    });
  }
}
