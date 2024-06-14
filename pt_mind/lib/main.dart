import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pt_mind/widgets/navi_bar.dart';
import 'package:pt_mind/screens/chat_screen.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: SafeArea(
            top: true,
            bottom: true,
            child: Column(
              children: [
                Container(
                  decoration: const BoxDecoration(color: Color(0xFF807FFF)),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20.0,
                          vertical: 15.0,
                        ),
                        child: SvgPicture.asset(
                          'assets/ptmind-logo.svg',
                        ),
                      ),
                    ],
                  ),
                ),
                const Expanded(
                  child: ChatScreen(),
                )
              ],
            ),
          ),
          bottomNavigationBar: const BottomNavi(),
        ));
  }
}
