class Player {
  final String name = 'tomato';
  int xp = 1500;

  void sayHello() {
    print('Hi my name is $name');
  }
}

void main() {
  var player = Player();
  print(player.name);
  // player.name = 'jams';
  print(player.name);
  player.sayHello();
}
