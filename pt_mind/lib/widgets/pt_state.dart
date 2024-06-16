import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pt_mind/screens/chatroom_screen.dart';
import 'package:pt_mind/screens/favorite_screen.dart';

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
    const ChatRoomScreen(),
    const FavoriteScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: _navIndex[currentPageIndex],
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
            labelTextStyle: MaterialStateProperty.all(
          const TextStyle(
            color: Colors.white,
            fontSize: 11.0,
          ),
        )),
        child: NavigationBar(
          height: 60.0,
          labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
          backgroundColor: const Color(0xFF807FFF),
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
                  textColor: Colors.white,
                  backgroundColor: Colors.transparent,
                  label: const Text('1'),
                  child: SvgPicture.asset('assets/chatButtonOn.svg')),
              icon: Badge(
                  textColor: Colors.white,
                  backgroundColor: Colors.transparent,
                  label: const Text('1'),
                  child: SvgPicture.asset('assets/chatButtonUn.svg')),
              label: '채팅',
            ),
            NavigationDestination(
              selectedIcon: Badge(
                  textColor: Colors.white,
                  backgroundColor: Colors.transparent,
                  label: const Text('2'),
                  child: SvgPicture.asset('assets/favoriteOn.svg')),
              icon: Badge(
                  textColor: Colors.white,
                  backgroundColor: Colors.transparent,
                  label: const Text('2'),
                  child: SvgPicture.asset('assets/favoriteUn.svg')),
              label: '즐겨찾기',
            ),
            NavigationDestination(
              selectedIcon: SvgPicture.asset('assets/PTOn.svg'),
              icon: SvgPicture.asset('assets/PTUn.svg'),
              label: '트레이닝',
            ),
            NavigationDestination(
              selectedIcon: SvgPicture.asset('assets/MyOn.svg'),
              icon: SvgPicture.asset('assets/MyUn.svg'),
              label: 'My',
            ),
          ],
        ),
      ),
    );
  }
}
