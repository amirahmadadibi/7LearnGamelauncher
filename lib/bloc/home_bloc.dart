import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:game_laucher/bloc/home_event.dart';
import 'package:game_laucher/bloc/home_state.dart';

class HomeBloc extends Bloc<HomeEvent,HomeState>{
 HomeBloc():super(HomeLoading()){
    
 }
}