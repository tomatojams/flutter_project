mixin class Strong {
  final double strengthLevel = 2000.99;
}

mixin QuickRunner {
  void runQuick() {
    print('ruuuuuuun');
  }
}

enum Team { red, blue }

class Player with Strong, QuickRunner {
  final Team team;
  final String name;

  Player({
    required this.team,
    required this.name,
  });

  void sayHello() {
    print('and I plays for $team. ${team}');
  }
}

void main() {
  var player = Player(team: Team.red, name: 'tomato');

  player.runQuick();
}
