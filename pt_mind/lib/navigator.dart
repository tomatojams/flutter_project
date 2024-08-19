import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pt_mind/features/authentication/sign_up_screen.dart';
import 'package:pt_mind/features/chat/lobby_screen_chat.dart';
import 'package:pt_mind/features/favorite/favorite_screen.dart';
import 'package:pt_mind/features/training/lobby_screen_train.dart';
import 'package:pt_mind/features/personal/personal_screen.dart';

import 'utility/navigator_widget.dart';

class NaviState extends StatefulWidget {
  const NaviState({
    super.key,
  });

  @override
  State<NaviState> createState() => _NaviStateState();
}

class _NaviStateState extends State<NaviState> {
  bool elevated = true;
  int currentPageIndex = 0;
  final List<Widget> _navIndex = [
    ChatLobbyScreen(),
    const FavoriteScreen(),
    const TraingScreen(),
    const PersonalScreen(),
  ];

  bool isElevated() {
    return currentPageIndex == 0 || currentPageIndex == 1;
  }

  void _onTab(int index) {
    setState(() {
      currentPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.black87,
        elevation: isElevated() ? 2 : 0,
        backgroundColor: Theme.of(context).primaryColor,
        title: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SvgPicture.asset(
            'assets/logo/ptmind-logo.svg',
            height: 28.0,
          ),
        ),
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: _navIndex[currentPageIndex],
          ),
          Positioned(
            bottom: 20, // 메뉴바의 위치를 화면 하단에서 20픽셀 위로 설정
            left: 30,
            right: 30,
            child: BottomAppBar(
              elevation: 0,
              color: Colors.transparent,
              child: Container(
                decoration: const BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(255, 205, 205, 206),
                      blurRadius: 2,
                      spreadRadius: 2,
                      offset: Offset(0, 0),
                    ),
                  ],
                  color: Color(0xff807FFF),
                  borderRadius: BorderRadius.all(Radius.elliptical(20, 20)),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 0,
                    vertical: 9,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      NavTab(
                        isSelected: currentPageIndex == 0,
                        icon: SvgPicture.asset('assets/menu/chatButtonOn.svg'),
                        tap: () => _onTab(0),
                      ),
                      NavTab(
                        isSelected: currentPageIndex == 1,
                        icon: SvgPicture.asset('assets/menu/favoriteOn.svg'),
                        tap: () => _onTab(1),
                      ),
                      NavTab(
                        isSelected: currentPageIndex == 2,
                        icon: SvgPicture.asset('assets/menu/PTOn.svg'),
                        tap: () => _onTab(2),
                      ),
                      NavTab(
                        isSelected: currentPageIndex == 3,
                        icon: SvgPicture.asset('assets/menu/MyOn.svg'),
                        tap: () => _onTab(3),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 90, // 메뉴바 위쪽에 위치하도록 설정
            right: 30, // 오른쪽 여백을 지정
            child: Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Theme.of(context).scaffoldBackgroundColor,
                    blurRadius: 1,
                    spreadRadius: 1,
                    offset: const Offset(0, 0), // 그림자의 위치
                  ),
                ],
                shape: BoxShape.circle, // 원형 모양으로
              ),
              child: ClipOval(
                child: FloatingActionButton(
                  backgroundColor: Theme.of(context).cardColor,
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const SignUpScreen(),
                        fullscreenDialog: true));
                  },
                  child:
                      Image.asset('assets/icon/birthday-cake.png', width: 35),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
