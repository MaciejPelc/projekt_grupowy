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

    on<AuthRegister>(((event, emit) {}));
  }

  Future<void> _authLogin(AuthLogin event, Emitter<AuthState> emit) async {
    try {
      emit(AuthLoading());

      final SharedPreferences prefs = await SharedPreferences.getInstance();
      ResponseUserModel responseUserModel = const ResponseUserModel();
      AuthRepository authRepository = AuthRepository();
      responseUserModel = await authRepository.login(event.postLoginModel);

      if (responseUserModel.accessToken != null) {
        emit(AuthError(message: "Error"));
      } else {
        await prefs.setString("access_token", responseUserModel.accessToken!);
        emit(AuthLogged());
      }
    } catch (e) {
      emit(AuthError(message: e.toString()));
    }
  }
}
