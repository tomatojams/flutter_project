import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

// main -> runApp()-> 함수(stateless)->build()-> MaterialApp()->home:->Scaffold()->Appbar(),기타
class App extends StatelessWidget {
  const App({super.key});

  // stateless위젯을 만들려면 build 메소드를 만들어야 한다.
  // UI를 만드는 일을 함
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Colors.red,
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 40.0),
            child: Column(
              children: [
                SizedBox(
                  height: 100,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'Hey, Selena',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'Welcome,Back',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ],
            ),
          )),
    );
  }
}
