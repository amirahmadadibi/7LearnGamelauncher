import 'package:flutter/material.dart';

import 'game_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
            itemCount: 20,
            itemBuilder: (context, index) {
              return GameCard();
            }),
      );
  }
}