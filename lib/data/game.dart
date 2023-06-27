import 'package:hive/hive.dart';

part 'game.g.dart';

@HiveType(typeId: 0)
class Game {
  @HiveField(0)
  String name;

  @HiveField(1)
  String thumbnail;

  @HiveField(2)
  String gameStudio;

  @HiveField(3)
  String description;

  @HiveField(4)
  double rate;

  Game(this.name, this.thumbnail, this.gameStudio, this.description, this.rate);

  factory Game.fromJson(Map<String, dynamic> data) {
    return Game(
        data['name'],
        'http://startflutter.ir/api/files/${data['collectionId']}/${data['id']}/${data['thumbnail']}',
        data['game_studio'],
        data['description'],
        data['rate']);
  }

  @override
  String toString() {
    return this.name;
  }
}
