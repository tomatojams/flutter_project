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
        theme: ThemeData(
          scaffoldBackgroundColor: const Color(0xFFF8F2F5),
          primaryColor: const Color(0xFF807FFF),
          primaryColorDark: const Color(0xFF4645A9),
          primaryColorLight: const Color(0xFFB7B1DF),
          shadowColor: Colors.grey.withOpacity(0.2),
          focusColor: const Color(0xFF7D3596),
          indicatorColor: const Color(0xFF594D5D),
          hintColor: const Color(0xFF696767),
          dialogBackgroundColor: const Color(0xFF4645A9).withOpacity(0.8),
          cardColor: Colors.white,
        ),
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            elevation: 2,
            backgroundColor: const Color(0xFF807FFF),
            title: Padding(
              padding: const EdgeInsets.all(10.0),
              child: SvgPicture.asset(
                'assets/ptmind-logo.svg',
                height: 28.0,
              ),
            ),
          ),
          body: const ChatScreen(),
          bottomNavigationBar: const BottomNavi(),
        ));
  }
}
