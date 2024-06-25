import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:version_alpha/pages/register/bloc/register_events.dart';
import 'package:version_alpha/pages/register/bloc/register_states.dart';

class RegisterBloc extends Bloc<RegisterEvents, RegisterStates> {
  RegisterBloc() : super(const RegisterStates()) {
    on<NameEvent>(_nameEvent);
    on<UserNameEvent>(_userNameEvent);
    on<EmailEvent>(_emailEvent);
    on<PasswordEvent>(_passwordEvent);
  }
  void _nameEvent(NameEvent event, Emitter<RegisterStates> emit) {
    print("${event.name}");
    emit(state.copyWith(name: event.name));
  }

  void _userNameEvent(UserNameEvent event, Emitter<RegisterStates> emit) {
    print("${event.userName}");
    emit(state.copyWith(userName: event.userName));
  }

  void _emailEvent(EmailEvent event, Emitter<RegisterStates> emit) {
    print("${event.email}");
    emit(state.copyWith(email: event.email));
  }

  void _passwordEvent(PasswordEvent event, Emitter<RegisterStates> emit) {
    print("${event.password}");
    emit(state.copyWith(password: event.password));
  }
}
