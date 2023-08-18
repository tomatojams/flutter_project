class Player {
  final String name;
  int xp;
  String team;
  int age;

  Player({
    required this.name,
    required this.xp,
    required this.team,
    required this.age,
  });

  void sayHello() {
    print('Hi my name is $name and  I\'m ${age + 1} years old');
  }
}

void main() {
  var player = Player(
    name: 'tomato',
    xp: 1500,
    team: 'black',
    age: 19,
  );
  player.sayHello();
}
