import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../constants/gaps.dart';
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
    const StfScreen(),
    const StfScreen(),
    const StfScreen(),
    const StfScreen(),
  ];

  void _onTab(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens.elementAt(_selectedIndex),
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
                borderRadius: BorderRadius.all(Radius.circular(18)),
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
