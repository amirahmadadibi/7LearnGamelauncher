import '../data/game.dart';

abstract class HomeState {}

class HomeLoading extends HomeState {}

class HomeDataFetched extends HomeState {
  List<Game> gameList;
  HomeDataFetched(this.gameList);
}
