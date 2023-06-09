import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:game_laucher/data/game.dart';

import 'game_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Game> gameList = [];
  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1E1E1E),
      appBar: AppBar(
        title: Text('Game Launcher'),
        backgroundColor: Color(0xff1E1E1E),
        centerTitle: true,
        elevation: 0,
        leading: Container(
          margin: EdgeInsets.only(left: 10),
          decoration: BoxDecoration(
            color: Color(0xff1AFFFFFF),
            shape: BoxShape.circle,
          ),
          child: Center(
            child: Image.asset('assets/images/icon_like.png'),
          ),
        ),
        actions: [
          Container(
            height: 45,
            width: 45,
            margin: EdgeInsets.only(top: 2, right: 10),
            decoration: BoxDecoration(
              color: Color(0xff1AFFFFFF),
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Image.asset('assets/images/icon_search.png'),
            ),
          )
        ],
      ),
      body: ListView.builder(
          itemCount: gameList.length,
          itemBuilder: (context, index) {
            return GameCard(gameList[index]);
          }),
    );
  }

  Future<void> getData() async {
    var dio = Dio();

    var response =
        await dio.get('http://startflutter.ir/api/collections/games/records');
    List<Game> gameDataList = response.data['items'].map<Game>((jsonObject) {
      return Game.fromJson(jsonObject);
    }).toList();

    setState(() {
      gameList = gameDataList;
    });
  }
}
