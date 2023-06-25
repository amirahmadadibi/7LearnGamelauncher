import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:game_laucher/searchBloc/search_event.dart';
import 'package:game_laucher/searchBloc/search_state.dart';


class SearchBloc extends Bloc<SearchEvent,SearchState>{
  SearchBloc():super(SearchInit()){

  }

}