import 'package:flame/game.dart';
import 'package:flutter/material.dart';

import 'gamepage/game.dart';

class YourGamePage extends StatefulWidget {
  const YourGamePage({super.key});

  @override
  State<YourGamePage> createState() => _YourGamePageState();
}

class _YourGamePageState extends State<YourGamePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        foregroundColor: Theme.of(context).primaryColor,
        title: const Text("Airplane Game"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(0.0),
          child: GameWidget(
            game: StartGame(), // 이부분에 게임 인스턴스를 넣어준다.
          ),
        ),
      ),
    );
  }
}
