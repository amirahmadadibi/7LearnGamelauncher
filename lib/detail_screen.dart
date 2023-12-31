import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:game_laucher/data/game.dart';
import 'package:hive_flutter/hive_flutter.dart';

class DetailScreen extends StatelessWidget {
  Game game;
  DetailScreen(this.game, {super.key});

  @override
  Widget build(BuildContext context) {
    var box = Hive.box<Game>('GameBox');
    return Scaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          flex: 55,
          child: Stack(
            fit: StackFit.expand,
            children: [
              Container(
                child: CachedNetworkImage(
                  imageUrl: game.thumbnail,
                  fit: BoxFit.cover,
                  placeholder: (context, url) {
                    return Container(
                      height: 120,
                      width: 88,
                      decoration: BoxDecoration(
                          color: const Color(0xff1C82AD),
                          borderRadius: BorderRadius.circular(12)),
                    );
                  },
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [Color(0xff1E232A), Colors.transparent])),
              ),
              SafeArea(
                child: Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: Container(
                          height: 50,
                          width: 50,
                          margin: const EdgeInsets.only(left: 18),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xff1Affffff),
                          ),
                          child: Center(
                            child: Image.asset('assets/images/icon_back.png'),
                          ),
                        ),
                      ),
                      const Spacer(),
                      GestureDetector(
                        onTap: () {
                          box.add(game);
                        },
                        child: Container(
                          height: 50,
                          width: 50,
                          margin: const EdgeInsets.only(right: 18),
                          decoration: const BoxDecoration(
                            color: Color(0xff1Affffff),
                            shape: BoxShape.circle,
                          ),
                          child: Center(
                            child: Image.asset('assets/images/icon_like.png'),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          flex: 45,
          child: Container(
            color: const Color(0xff1E232A),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(
                    height: 12,
                  ),
                  Text(
                    game.name,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontFamily: 'yekan',
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Text(game.gameStudio,
                      style: const TextStyle(
                          color: Color(0xff99ffffff),
                          fontSize: 22,
                          fontFamily: 'yekan')),
                  const SizedBox(
                    height: 12,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(game.rate.toString(),
                          style: const TextStyle(
                              color: Color(0xffFFC700),
                              fontSize: 22,
                              fontFamily: 'yekan')),
                      const SizedBox(
                        width: 4,
                      ),
                      Image.asset('assets/images/icon_fav.png')
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Text(game.description,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            color: Color(0xff99ffffff),
                            fontSize: 22,
                            fontFamily: 'yekan')),
                  )
                ],
              ),
            ),
          ),
        )
      ],
    ));
  }
}
