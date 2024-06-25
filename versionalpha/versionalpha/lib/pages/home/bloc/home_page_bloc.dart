import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:version_alpha/pages/home/bloc/home_page_events.dart';
import 'package:version_alpha/pages/home/bloc/home_page_states.dart';

class HomePageBloc extends Bloc<HomePageEvents, HomePageStates> {
  HomePageBloc() : super( HomePageStates()) {
    on<HomePageDots>(_homePageDots);
  }

  void _homePageDots(HomePageDots event, Emitter<HomePageStates> emit) {
    emit(state.copyWith(index: event.index));
  }
}
