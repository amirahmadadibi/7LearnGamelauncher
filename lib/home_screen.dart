import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:game_laucher/bloc/home_bloc.dart';
import 'package:game_laucher/bloc/home_state.dart';
import 'package:game_laucher/game_card.dart';
import 'package:game_laucher/search_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1E1E1E),
      appBar: AppBar(
        title: const Text('Game Launcher'),
        backgroundColor: const Color(0xff1E1E1E),

        centerTitle: true,
        elevation: 0,
        leading: Container(
          margin: const EdgeInsets.only(left: 10),
          decoration: const BoxDecoration(
            color: Color(0xff1AFFFFFF),
            shape: BoxShape.circle,
          ),
          child: Center(
            child: Image.asset('assets/images/icon_like.png'),
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return SearchScreen();
              }));
            },
            child: Container(
              height: 45,
              width: 45,
              margin: const EdgeInsets.only(top: 2, right: 10),
              decoration: const BoxDecoration(
                color: Color(0xff1AFFFFFF),
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Image.asset('assets/images/icon_search.png'),
              ),
            ),
          )
        ],
      ),
      body: BlocBuilder<HomeBloc, HomeState>(builder: (context, state) {
        if (state is HomeLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        if (state is HomeDataFetched) {
          return ListView.builder(
            itemCount: state.gameList.length,
            itemBuilder: (context, index) {
              return GameCard(state.gameList[index]);
            },
          );
        }
        return const Text('error');
      }),
    );
  }
}
