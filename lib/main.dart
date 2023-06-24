import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:game_laucher/bloc/home_bloc.dart';
import 'package:game_laucher/bloc/home_event.dart';
import 'package:game_laucher/home_screen.dart';
import 'package:game_laucher/search_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider(
        create: (context) {
          HomeBloc homeBloc = HomeBloc();
          homeBloc.add(HomeInit());
          return homeBloc;
        },
        child: HomeScreen(),
      ),
    );
  }
}
