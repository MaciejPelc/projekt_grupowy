part of 'auth_bloc.dart';

@immutable
sealed class AuthEvent {}

class AuthLogin extends AuthEvent {}

class AuthRegister extends AuthEvent {}

class AuthLogout extends AuthEvent {}
