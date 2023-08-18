import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Column(
            children: [
              Expanded(
                // row나 column,flex의 child로 붙인다.
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.orange,
                  ),
                  child: Transform.scale(
                    scale: 0.1,
                    child: Image.asset(
                      'assets/logo.png',
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
