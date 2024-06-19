
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'screens/chat_room.dart';
import 'services/chat_provider.dart';
import 'services/login.dart';
import 'services/user_provider.dart';

void main() => runApp(const System());

class System extends StatelessWidget {
  const System({Key? key}) : super(key: key);

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
        debugShowCheckedModeBanner: false,
        onGenerateRoute: (RouteSettings route) {
          if (route.name == ChatRoom.path) {
            return MaterialPageRoute(
                settings: const RouteSettings(name: ChatRoom.path),
                builder: (BuildContext context) {
                  ChatProvider chatProvider =
                      Provider.of<ChatProvider>(context);
                  UserProvider userProvider =
                      Provider.of<UserProvider>(context);
                  return ChatRoom(
                    chatProvider: chatProvider,
                    userProvider: userProvider,
                  );
                });
          }
          return MaterialPageRoute(
              settings: const RouteSettings(name: Login.path),
              builder: (BuildContext context) {
                ChatProvider chatProvider = Provider.of<ChatProvider>(context);
                UserProvider userProvider = Provider.of<UserProvider>(context);
                return Login(
                    chatProvider: chatProvider, userProvider: userProvider);
              });
        },
      ),
    );
  }
}
