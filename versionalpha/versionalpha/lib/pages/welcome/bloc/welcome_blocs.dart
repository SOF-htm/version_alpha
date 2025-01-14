import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:version_alpha/pages/welcome/bloc/welcome_events.dart';
import 'package:version_alpha/pages/welcome/bloc/welcome_states.dart';

class WelcomeBloc extends Bloc<WelcomeEvents, WelcomeStates> {
  WelcomeBloc() : super(WelcomeStates()) {
    on<WelcomeEvents>((event, emit) {
      emit(WelcomeStates(page: state.page));
    });
  }
}
