// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:for_internship/models/user_model.dart';
import 'package:for_internship/repo/repository.dart';

part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final UserRepository _userRepository;
  List<UserModel>? users;
  UserBloc(this._userRepository) : super(UserLoadingState()) {
    on<LoadUserEvent>((event, emit) async {
      emit(UserLoadingState());

      try {
        users = await _userRepository.getUsers();
        emit(UserLoadedState(users!));
      } catch (e) {
        emit(UserErrorState(e.toString()));
      }
    });
    on<UserDeleteEvent>((event, emit) async {
      emit(UserLoadingState());
      if (users != null) {
        users!.removeAt(event.index);
        emit(UserLoadedState(users!));
      }
    });
  }
}
