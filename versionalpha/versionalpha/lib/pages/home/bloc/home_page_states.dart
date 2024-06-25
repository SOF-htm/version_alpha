class HomePageStates {
  HomePageStates({
    this.index = 0,
  });
  int index = 0;

  HomePageStates copyWith({int? index}) {
    return HomePageStates(
      index: index ?? this.index,
    );
  }
}
