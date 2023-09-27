import 'package:flutter/material.dart';
import 'package:image_carousel/screen/home_screen.dart';

void main() {
  runApp(const Joy());
}

class Joy extends StatelessWidget {
  const Joy({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
