import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BNBar extends StatelessWidget {
  const BNBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: Colors.white,
      unselectedItemColor: const Color(0xFFB9B9FF),
      backgroundColor: const Color(0xFF7877ED),
      selectedFontSize: 12,
      unselectedFontSize: 12,
      items: [
        BottomNavigationBarItem(
          icon: SvgPicture.asset('assets/chat.svg'),
          label: '채팅',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset('assets/favorite.svg'),
          label: '즐겨찾기',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset('assets/P.T.svg'),
          label: '트레이닝',
        ),
        // BottomNavigationBarItem(
        //   icon: SvgPicture.asset('assets/My.svg'),
        //   label: '마이',
        // )
      ],
    );
  }
}
