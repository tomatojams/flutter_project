import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pt_mind/screens/chat_lobby_screen.dart';
import 'package:pt_mind/screens/favorite_screen.dart';
import 'package:pt_mind/screens/training_screen.dart';
import 'package:pt_mind/screens/personal_screen.dart';

class PTstate extends StatefulWidget {
  const PTstate({
    super.key,
  });

  @override
  State<PTstate> createState() => _PTstateState();
}

class _PTstateState extends State<PTstate> {
  int currentPageIndex = 0;
  final List<Widget> _navIndex = [
    ChatLobbyScreen(// ChatLobbyScreen
        ),
    const FavoriteScreen(),
    const TraingScreen(),
    const PersonalScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        backgroundColor: Theme.of(context).primaryColor,
        title: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SvgPicture.asset(
            'assets/logo/ptmind-logo.svg',
            height: 28.0,
          ),
        ),
      ),
      body: _navIndex[currentPageIndex],
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
            labelTextStyle: WidgetStateProperty.all(
          TextStyle(
            color: Theme.of(context).cardColor,
            fontSize: 11.0,
          ),
        )),
        child: NavigationBar(
          height: 60.0,
          labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
          backgroundColor: Theme.of(context).primaryColor,
          onDestinationSelected: (int index) {
            setState(() {
              currentPageIndex = index;
            });
          },
          indicatorColor: Colors.transparent,
          selectedIndex: currentPageIndex,
          destinations: <Widget>[
            NavigationDestination(
              selectedIcon: Badge(
                  textColor: Theme.of(context).cardColor,
                  backgroundColor: Colors.transparent,
                  label: const Text('1'),
                  child: SvgPicture.asset('assets/menu/chatButtonOn.svg')),
              icon: Badge(
                  textColor: Theme.of(context).cardColor,
                  backgroundColor: Colors.transparent,
                  label: const Text('1'),
                  child: SvgPicture.asset('assets/menu/chatButtonUn.svg')),
              label: '채팅',
            ),
            NavigationDestination(
              selectedIcon: Badge(
                  textColor: Theme.of(context).cardColor,
                  backgroundColor: Colors.transparent,
                  label: const Text('2'),
                  child: SvgPicture.asset('assets/menu/favoriteOn.svg')),
              icon: Badge(
                  textColor: Theme.of(context).cardColor,
                  backgroundColor: Colors.transparent,
                  label: const Text('2'),
                  child: SvgPicture.asset('assets/menu/favoriteUn.svg')),
              label: '즐겨찾기',
            ),
            NavigationDestination(
              selectedIcon: SvgPicture.asset('assets/menu/PTOn.svg'),
              icon: SvgPicture.asset('assets/menu/PTUn.svg'),
              label: '트레이닝',
            ),
            NavigationDestination(
              selectedIcon: SvgPicture.asset('assets/menu/MyOn.svg'),
              icon: SvgPicture.asset('assets/menu/MyUn.svg'),
              label: 'My',
            ),
          ],
        ),
      ),
    );
  }
}
