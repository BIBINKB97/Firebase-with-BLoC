import 'package:bloc/bloc.dart';
import 'package:firebase_bloc/application/feature/auth/auth_bloc/models/user_model.dart';
import 'package:meta/meta.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  AuthBloc() : super(AuthInitial()) {
    on<CheckLoginStatusEvent>((event, emit) async {
      User? user;

      try {
        await Future.delayed(Duration(seconds: 1), () {
          user = _auth.currentUser;
        });

        if (user != null) {
          emit(Authenticated(user));
        }
      } catch (e) {
        emit(AuthenticatedError(message: e.toString()));
      }
    });
  }
}
