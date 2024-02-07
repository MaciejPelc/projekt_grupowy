import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthInitial()) {
    on<AuthEvent>((event, emit) {});

    on<AuthLogin>(_authLogin);

    on<AuthRegister>(((event, emit) {}));
  }

  Future<void> _authLogin(AuthLogin event, Emitter<AuthState> emit) async {
    try {
      emit(AuthLoading());

      final SharedPreferences prefs = await SharedPreferences.getInstance();
    } catch (e) {
      emit(AuthError(message: e.toString()));
    }
  }
}
