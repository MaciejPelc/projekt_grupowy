import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:projekt_grupowy/models/post_login_model.dart';
import 'package:projekt_grupowy/models/response_user_model.dart';
import 'package:projekt_grupowy/resources/auth_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthInitial()) {
    on<AuthEvent>((event, emit) {});

    on<AuthLogin>(_authLogin);

    on<AuthRegister>(_authRegister);
  }

  Future<void> _authLogin(AuthLogin event, Emitter<AuthState> emit) async {
    try {
      emit(AuthLoading());

      final SharedPreferences prefs = await SharedPreferences.getInstance();
      ResponseUserModel responseUserModel = const ResponseUserModel();
      AuthRepository authRepository = AuthRepository();
      responseUserModel = await authRepository.login(event.postLoginModel);

      if (responseUserModel.accessToken != null) {
        await prefs.setString("access_token", responseUserModel.accessToken!);
        emit(AuthLogged());
      } else {
        emit(AuthError(message: "Error"));
      }
    } catch (e) {
      emit(AuthError(message: e.toString()));
    }
  }

  Future<void> _authRegister(
      AuthRegister event, Emitter<AuthState> emit) async {
    try {
      emit(AuthLoading());
      AuthRepository authRepository = AuthRepository();
      await authRepository.register(event.postLoginModel);
      emit(AuthRegistered());
    } catch (e) {
      emit(AuthError(message: e.toString()));
    }
  }
}
