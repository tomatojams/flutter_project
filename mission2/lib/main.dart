import 'package:flutter/material.dart';
import 'package:mission2/screen/home_screen.dart';

void main() {
  runApp(const Joy());
}

class Joy extends StatelessWidget {
  const Joy({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
