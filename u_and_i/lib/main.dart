import 'package:flutter/material.dart';
import 'screen/home_screen.dart';


void main() {
  runApp(const Joy());
}

class Joy extends StatelessWidget {
  const Joy({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}
