part of 'auth_bloc.dart';

@immutable
abstract class AuthState {}

final class AuthInitial extends AuthState {}

class AuthLoding extends AuthState {}

class Authenticated extends AuthState {
  UserModel? user;
  Authenticated(this.user);
}

class UnAuthenticated extends AuthState {}

class AuthenticatedError extends AuthState {
  final String message;

  AuthenticatedError({required this.message});
}
    