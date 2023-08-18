class Human {
  final String name;
  Human({required this.name});

  void sayHello() {
    print("Hi my name is $name.");
  }
}

enum Team { red, blue }

class Player extends Human {
  final Team team;

  Player({
    required this.team,
    required String name,
  }) : super(name: name); // super에서 상위클래스의 생성자를 호출

  @override
  void sayHello() {
    super.sayHello();
    print('and I plays for $team. ${team}');
  }
}

void main() {
  var player = Player(team: Team.red, name: 'tomato');

  player.sayHello();
}
