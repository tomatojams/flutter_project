import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../constants/gaps.dart';
import 'post_video_button.dart';
import 'stf_screen.dart';
import 'widgets/nav_tab.dart';

class NaviState extends StatefulWidget {
  const NaviState({super.key});

  @override
  State<NaviState> createState() => _NaviStateState();
}

class _NaviStateState extends State<NaviState> {
  int _selectedIndex = 0;

  final screens = [
    // 서로 다른 웨젯이라면 다른 키를 가지고 있어야함
    StfScreen(
      key: GlobalKey(),
    ),
    StfScreen(
      key: GlobalKey(),
    ),
    StfScreen(
      key: GlobalKey(),
    ),
    StfScreen(
      key: GlobalKey(),
    ),
    StfScreen(
      key: GlobalKey(),
    ),
  ];

  void _onTab(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _onPostVideoButtonTap() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Scaffold(
          appBar: AppBar(
            title: const Text('Post Video'),
          ),
        ),
        fullscreenDialog: true, // 전체화면으로 덮음
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: screens.elementAt(_selectedIndex),
      body: Stack(
        children: [
          Offstage(
            // Offstage는 화면에 보이지 않게 할 수 있음
            offstage: _selectedIndex != 0,
            child: const StfScreen(),
          ),
          Offstage(
            offstage: _selectedIndex != 1,
            child: const StfScreen(),
          ),
          Offstage(
            offstage: _selectedIndex != 2,
            child: const StfScreen(),
          ),
          Offstage(
            offstage: _selectedIndex != 3,
            child: const StfScreen(),
          ),
        ],
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
                      isSelected: _selectedIndex == 0,
                      icon: SvgPicture.asset('assets/menu/chatButtonOn.svg'),
                      // 자식에서 함수를 전달해 부모속성을 변겨할 수 있음
                      // 그리고 setState를 통해 화면을 다시 그림
                      tap: () => _onTab(0),
                    ),
                    NavTab(
                      isSelected: _selectedIndex == 1,
                      icon: SvgPicture.asset('assets/menu/favoriteOn.svg'),
                      tap: () => _onTab(1),
                    ),
                    Gaps.h20,
                    GestureDetector(
                      onTap: _onPostVideoButtonTap,
                      child: const PostVideoButton(),
                    ),
                    Gaps.h20,
                    NavTab(
                      isSelected: _selectedIndex == 2,
                      icon: SvgPicture.asset('assets/menu/PTOn.svg'),
                      tap: () => _onTab(2),
                    ),
                    NavTab(
                      isSelected: _selectedIndex == 3,
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
