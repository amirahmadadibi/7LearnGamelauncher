import '../data/game.dart';

abstract class SearchState {}

class SearchInit extends SearchState {}


class SearchLoading extends SearchState{
    
}

class SearchDataFetched extends SearchState {
  List<Game> gameList;
  SearchDataFetched(this.gameList);
}
