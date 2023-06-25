import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:game_laucher/searchBloc/search_event.dart';
import 'package:game_laucher/searchBloc/search_state.dart';

import '../data/game.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  SearchBloc() : super(SearchInit()) {
    on<SearchRequested>(
      (event, emit) async {
        emit(SearchLoading());
        var list = await getData(event.searchTerm);
        emit(SearchDataFetched(list));
      },
    );
  }

  Future<List<Game>> getData(String serachTerm) async {
    var dio = Dio();

    Map<String, String> qParams = {'filter': 'name~$serachTerm'};
    var response = await dio.get(
        'http://startflutter.ir/api/collections/games/records',
        queryParameters: qParams);
    List<Game> gameDataList = response.data['items'].map<Game>((jsonObject) {
      return Game.fromJson(jsonObject);
    }).toList();

    return gameDataList;
  }
}
