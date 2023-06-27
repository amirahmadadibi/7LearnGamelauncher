import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'data/game.dart';
import 'game_card.dart';

class FavScreen extends StatelessWidget {
  const FavScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var box = Hive.box<Game>('GameBox');
    return Scaffold(
      backgroundColor: const Color(0xff1E1E1E),
      appBar: AppBar(
        title: Text('Favoraites'),
        backgroundColor: const Color(0xff1E1E1E),
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: box.values.toList().length,
        itemBuilder: (context, index) {
          return GameCard(box.values.toList()[index]);
        },
      ),
    );
  }
}
