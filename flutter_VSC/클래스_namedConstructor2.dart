class Player {
  final String name;
  int xp;
  String team;
  int age = 11;
  Player.fromJson(Map<String, dynamic> playerJson)
      : name = playerJson["name"],
        xp = playerJson["xp"],
        team = playerJson["team"];

  void sayHello() {
    print(
        'Hi my name is $name and  I\'m ${age + 1} years old and my team is $team and xp is $xp');
  }
}

void main() {
  var apiData = [
    {
      "name": "tomato",
      "team": "red",
      "xp": 0,
    },
    {
      "name": "Lyn",
      "team": "blue",
      "xp": 0,
    },
    {
      "name": "dollar",
      "team": "black",
      "xp": 0,
    }
  ];
  apiData.forEach((playerJson) {
    // apiData리스트의 하나하나의 엘리먼트를 forEach 패러미터로 활용
    var player = Player.fromJson(playerJson); //따라서 생성패러미터가 됨
    player.sayHello();
  });
}
