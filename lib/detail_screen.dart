import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:game_laucher/data/game.dart';

class DetailScreen extends StatelessWidget {
  Game game;
  DetailScreen(this.game, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          flex: 55,
          child: Container(
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
        ),
        Expanded(
          flex: 45,
          child: Container(
            color: const Color(0xff1E232A),
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
        )
      ],
    ));
  }
}
