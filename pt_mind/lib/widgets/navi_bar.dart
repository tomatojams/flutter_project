import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavi extends StatelessWidget {
  final double naviHeight = 90.0;
  const BottomNavi({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return NavigationBarTheme(
      data: NavigationBarThemeData(
          labelTextStyle: MaterialStateProperty.all(
        const TextStyle(
          color: Colors.white,
          fontSize: 11.0,
        ),
      )),
      child: NavigationBar(
        height: 60,
        labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
        surfaceTintColor: Colors.black,
        backgroundColor: const Color(0xFF7877ED),
        onDestinationSelected: (int index) {},
        indicatorColor: Colors.transparent,
        // selectedIndex: currentPageIndex,
        destinations: <Widget>[
          NavigationDestination(
            selectedIcon: Badge(
                textColor: Colors.white,
                backgroundColor: Colors.transparent,
                label: const Text('1'),
                child: SvgPicture.asset('assets/chatButtonOn.svg')),
            icon: SvgPicture.asset('assets/chatButtonUn.svg'),
            label: '채팅',
          ),
          NavigationDestination(
            icon: Badge(
                textColor: Colors.white,
                backgroundColor: Colors.transparent,
                label: const Text('2'),
                child: SvgPicture.asset('assets/favoriteUn.svg')),
            label: '즐겨찾기',
          ),
          NavigationDestination(
            icon: SvgPicture.asset('assets/PTUn.svg'),
            label: '트레이닝',
          ),
          NavigationDestination(
            icon: SvgPicture.asset('assets/MyUn.svg'),
            label: 'My',
          ),
        ],
      ),
    );
  }
}
