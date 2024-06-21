import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:pt_mind/features/mainscreen/pt_state.dart';
import 'package:pt_mind/services/mqtt_chat_provider.dart';
import 'package:pt_mind/services/mqtt_user_provider.dart';
import 'package:pt_mind/features/chatting/mqtt/mqtt_chat_screen.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {

    return MultiProvider(
      providers: [
        ChangeNotifierProvider<ChatProvider>(
            create: (BuildContext _) => ChatProvider()),
        ChangeNotifierProvider<UserProvider>(
            create: (BuildContext _) => UserProvider())
      ],
      child: MaterialApp(
        onGenerateRoute: (RouteSettings route) {
          {
            if (route.name == MqttChatScreen.path) {
              return MaterialPageRoute(
                  settings: const RouteSettings(name: MqttChatScreen.path),
                  builder: (BuildContext context) {
                    ChatProvider chatProvider =
                        Provider.of<ChatProvider>(context);
                    UserProvider userProvider =
                        Provider.of<UserProvider>(context);
                    return MqttChatScreen(
                      chatProvider: chatProvider,
                      userProvider: userProvider,
                    );
                  });
            }
          }
          return null;
        },
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
        home: const PTstate(),
      ),
    );
  }
}
