import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:game_laucher/bloc/home_event.dart';
import 'package:game_laucher/bloc/home_state.dart';

import '../data/game.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeLoading()) {
    on<HomeInit>(
      (event, emit) async {
        emit(HomeLoading());
        var response = await getData();
        emit(HomeDataFetched(response));
      },
    );
  }

  Future<List<Game>> getData() async {
    var dio = Dio();

    var response =
        await dio.get('http://startflutter.ir/api/collections/games/records');
    List<Game> gameDataList = response.data['items'].map<Game>((jsonObject) {
      return Game.fromJson(jsonObject);
    }).toList();

    return gameDataList;
  }
}
