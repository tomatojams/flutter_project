import 'package:flutter/material.dart';
import 'package:tiktok/features/main_navigation/navigator.dart';

import 'features/authentication/sign_up_screen.dart';
import 'features/main_navigation/bottom_appbar.dart';

void main() {
  runApp(const TikTokApp());
}

class TikTokApp extends StatelessWidget {
  const TikTokApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TikTok',
      theme: ThemeData(
        useMaterial3: false,
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
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black87,
          elevation: 0,
          titleTextStyle: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.w600,
            color: Colors.black87,
          ),
        ),
      ),
      // home: const BottomAppBarDemo(),
      // home: const InterestsScreen(),
      home: const NaviState(),
    );
  }
}
