import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:pt_mind/navigator.dart';
import 'package:pt_mind/provider/auth_provider.dart';
import 'package:pt_mind/provider/PT_chat_provider.dart';
import 'package:pt_mind/provider/mqtt_chat_provider.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<MqttChatProvider>(
            create: (BuildContext _) => MqttChatProvider()),
        ChangeNotifierProvider<AuthProvider>(
            create: (BuildContext _) => AuthProvider()),
        ChangeNotifierProvider<AiChatProvider>(
            create: (BuildContext _) => AiChatProvider()),
      ],
      child: MaterialApp(
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
        ),
        debugShowCheckedModeBanner: false,
        home: const PTstate(), // 네비게이션 포함 홈화면
      ),
    );
  }
}
