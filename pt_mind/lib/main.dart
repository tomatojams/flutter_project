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
        theme: ThemeData(scaffoldBackgroundColor: const Color(0xFFF8F2F5)),
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            elevation: 2,
            backgroundColor: const Color(0xFF807FFF),
            title: Padding(
              padding: const EdgeInsets.all(10.0),
              child: SvgPicture.asset(
                'assets/ptmind-logo.svg',
              ),
            ),
          ),
          body: const ChatScreen(),
          bottomNavigationBar: const BottomNavi(),
        ));
  }
}
