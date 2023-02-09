import 'package:bloc/bloc.dart';
import 'package:email_password_bloc_firebase/auth_repo.dart';
import 'package:equatable/equatable.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc({required this.authRepository}) : super(UnAuthenticated()) {
    on<SignUpRequested>(
      (event, state) async {
        emit(Loading());
        try {
          await authRepository.signUp(
              email: event.email, password: event.password);
        } catch (e) {
          emit(UnAuthenticated());
        }
      },
    );
  }
  final AuthRepository authRepository;
}
