class Player {
  String name;
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
    print(
        'Hi my name is $name and  I\'m ${age + 1} years old and my team is $team and xp is $xp');
  }
}

void main() {
  var tomato = Player(name: 'tomato', xp: 2000, team: 'blue', age: 19);
  var lyn = tomato // 같은 것을 참조
    ..name = 'Kim'
    ..xp = 2000000
    ..team = 'red'
    ..sayHello();
}
