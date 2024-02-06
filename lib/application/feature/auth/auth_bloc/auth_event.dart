part of 'auth_bloc.dart';

@immutable
sealed class AuthEvent {}



// check login status event 
class CheckLoginStatusEvent extends AuthEvent {}



// Login Event
class LoginEvent extends AuthEvent {
  final String email;
  final String password;
  LoginEvent({required this.email, required this.password});
}


//signUp Event
class SignupEvent extends AuthEvent {
  final UserModel user;
  SignupEvent({required this.user});

}
