class Game {
  String name;
  String thumbnail;
  String gameStudio;
  String description;
  double rate;

  Game(this.name, this.thumbnail, this.gameStudio, this.description, this.rate);

  factory Game.fromJson(Map<String, dynamic> data) {
    return Game(data['name'], data['thumbnail'], data['game_studio'],
        data['description'], data['rate']);
  }

  @override
  String toString() {
    return this.name;
  }
}
