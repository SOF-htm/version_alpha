import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:version_alpha/pages/sign_in/bloc/sign_in_events.dart';
import 'package:version_alpha/pages/sign_in/bloc/sing_in_states.dart';

class SignInBloc extends Bloc<SignInEvents, SignInStates> {
  SignInBloc() : super(const SignInStates()) {
    on<EmailEvents>(_emailEvent);
    on<PasswordEvents>(_passwordEvent);
  }

  void _emailEvent(EmailEvents event, Emitter<SignInStates> emit) {
    emit(state.copyWith(email: event.email));
  }
  void _passwordEvent(PasswordEvents event, Emitter<SignInStates> emit) {
    emit(state.copyWith(password: event.password));
  }
}
