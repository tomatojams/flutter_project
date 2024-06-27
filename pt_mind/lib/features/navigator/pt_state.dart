import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pt_mind/features/authentication/sign_up_screen.dart';
import 'package:pt_mind/features/chatting/lobby_screen_chat.dart';
import 'package:pt_mind/features/favorite/favorite_screen.dart';
import 'package:pt_mind/features/training/training_screen.dart';
import 'package:pt_mind/features/personal/personal_screen.dart';

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
        shadowColor: Colors.black87,
        elevation: 2,
        // 엘리베이션을 하려면 shadowColor를 지정해야함
        backgroundColor: Theme.of(context).primaryColor,
        title: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SvgPicture.asset(
            'assets/logo/ptmind-logo.svg',
            height: 28.0,
          ),
        ),
      ),
      body: _navIndex[currentPageIndex], // 여기서 페이지를 바꿔줌
      floatingActionButton: FloatingActionButton(
        // 플로팅 가입아이콘
        backgroundColor: Theme.of(context).cardColor,
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => SignUpScreen(), fullscreenDialog: true));
        },
        tooltip: 'Increment',
        child: Image.asset(
          'assets/icon/birthday-cake.png',
          width: 30,
        ),
      ),
      bottomNavigationBar: NavigationBarTheme(
        // 바텀 네비게이션 테마

        data: NavigationBarThemeData(
            labelTextStyle: WidgetStateProperty.all(
          TextStyle(
            color: Theme.of(context).cardColor,
            fontSize: 11.0,
          ),
        )),
        child: Container(
          decoration: BoxDecoration(
            // 그림자 생성을 위한 컨테이너

            boxShadow: const [
              BoxShadow(
                color: Colors.black26,
                spreadRadius: 2,
                blurRadius: 4,
                offset: Offset(0, 1),
              ),
            ],
            color: Theme.of(context).primaryColor,
          ),
          child: NavigationBar(
            // 바텀 네비게이션

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
      ),
    );
  }
}
