abstract class Human {
  void walk();
}

enum Team { red, blue }

class Player extends Human {
  final String name;
  int xp;
  Team team;
  int age;

  Player({
    required this.name,
    required this.xp,
    required this.team,
    required this.age,
  });

  Player.blueplayer({required String name, required int age})
      : this.name = name,
        this.age = age,
        this.team = Team.blue,
        this.xp = 0;

  Player.redplayer(String name, int age)
      : this.name = name,
        this.age = age,
        this.team = Team.red,
        this.xp = 0;

  void walk() {
    print("I'm walking");
  }

  void sayHello() {
    print(
        'Hi my name is $name and  I\'m ${age + 1} years old and my team is $team and xp is $xp');
  }
}

class Coach extends Human {
  void walk() {
    print("the coach is walking");
  }
}

void main() {
  var player = Player(
    name: 'tomato',
    xp: 1500,
    team: Team.blue,
    age: 19,
  );

  var blueplayer = Player.blueplayer(
    name: 'tomato',
    age: 21,
  );
  var redplayer = Player.redplayer('Lynn', 19);

  blueplayer.sayHello();
  redplayer.sayHello();
  redplayer.walk();
}
