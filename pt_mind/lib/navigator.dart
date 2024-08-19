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
    if (currentPageIndex == 0 || currentPageIndex == 1) {
      return true;
    } else {
      return false;
    }
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
        elevation: isElevated() ? 2 : 0, // 페이지에 따라 evevation을 다르게 줌
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
      floatingActionButton: ClipOval(
        // 박스벗어나는거 잘라냄
        child: FloatingActionButton(
          // 플로팅 가입아이콘
          backgroundColor: Theme.of(context).cardColor,
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const SignUpScreen(),
                fullscreenDialog: true));
          },

          child: Image.asset('assets/icon/birthday-cake.png', width: 35),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 30,
          vertical: 20,
        ),
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
                      // 자식에서 함수를 전달해 부모속성을 변겨할 수 있음
                      // 그리고 setState를 통해 화면을 다시 그림
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
            )),
      ),
    );
  }
}
