import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StfScreen extends StatefulWidget {
  const StfScreen({super.key});

  @override
  State<StfScreen> createState() => _StfScreenState();
}

class _StfScreenState extends State<StfScreen> {
  int _clicks = 0;

  void _incrementCounter() {
    setState(() {
      _clicks++;
    });
  }

  @override
  void dispose() {
    print(_clicks);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print("StfScreen build");
    return Center(
      // 가로 센터만 잡음 세로센터는 Column에서 잡아야함
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text('$_clicks'),
        TextButton(onPressed: _incrementCounter, child: const Text('Click me'))
      ]),
    );
  }
}
