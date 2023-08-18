class Player {
  //late final String name;
  final String name;
  //late int xp;
  int xp;

  //Player(String name, int xp) {
  //  this.name = name;
  //  this.xp = xp;
  //}
  Player(this.name, this.xp);

  void sayHello() {
    print('Hi my name is $name');
  }
}

void main() {
  var player = Player('tomato', 19);
  player.sayHello();
  var player2 = Player('Kim', 21);
  player2.sayHello();
}
