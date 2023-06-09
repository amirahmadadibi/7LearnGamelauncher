import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'data/game.dart';

class GameCard extends StatelessWidget {
  Game game;
  GameCard(
    this.game, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: double.infinity,
      margin: const EdgeInsets.only(left: 25, right: 25, top: 15),
      decoration: BoxDecoration(
        color: const Color(0xff233144),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(bottom: 15, top: 15, left: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    game.name,
                    style: const TextStyle(
                        color: Colors.white, fontFamily: 'yekan'),
                  ),
                  Text(game.gameStudio,
                      style: const TextStyle(
                          color: Colors.white, fontFamily: 'yekan')),
                  Text(game.rate.toString(),
                      style: const TextStyle(
                          color: Colors.white, fontFamily: 'yekan')),
                  Text(game.description,
                      maxLines: 2,
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontFamily: 'yekan')),
                ],
              ),
            ),
          ),
          Container(
            margin:
                const EdgeInsets.only(left: 10, right: 15, top: 15, bottom: 15),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: CachedNetworkImage(
                imageUrl: game.thumbnail,
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
        ],
      ),
    );
  }
}
