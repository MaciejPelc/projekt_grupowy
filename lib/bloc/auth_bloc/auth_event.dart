part of 'auth_bloc.dart';

@immutable
sealed class AuthEvent {}

class AuthLogin extends AuthEvent {
  PostLoginModel postLoginModel = const PostLoginModel();
  AuthLogin({required this.postLoginModel});
}

class AuthRegister extends AuthEvent {}

class AuthLogout extends AuthEvent {}
