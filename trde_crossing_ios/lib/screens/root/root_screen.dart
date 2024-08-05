import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:trade_crossing_ios/config/assets.dart';
import 'package:trade_crossing_ios/config/theme.dart';
import 'package:trade_crossing_ios/screens/root/widgets/navigationbar_item.dart';

/// Bottom Navigation Bar가 있는 [root] 화면으로, [shell]을 받아 화면을 구성합니다.
/// 바텀 네비게이션에서 탭을 변경하면 [shell]이 변경되어 화면이 변경됩니다.
class RootScreen extends StatelessWidget {
  const RootScreen(this.shell, {super.key});

  final StatefulNavigationShell shell;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(top: false, child: shell),
      bottomNavigationBar: Container(
        height: 60.h + MediaQuery.of(context).padding.bottom,
        decoration: BoxDecoration(
          color: AppColor.backgroundColor,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(32.r), topRight: Radius.circular(32.r)),
          boxShadow: [
            BoxShadow(
              color: const Color(0xff695D3A).withOpacity(0.2),
              blurRadius: 20.r,
              offset: const Offset(0, -2),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            NavigationBarItem(
              icon: Assets.assetsIconsHome,
              label: '홈',
              onTap: () => shell.goBranch(0, initialLocation: shell.currentIndex == 0),
            ),
            NavigationBarItem(
              icon: Assets.assetsIconsChat,
              label: '채팅',
              onTap: () => shell.goBranch(1, initialLocation: shell.currentIndex == 1),
            ),
            NavigationBarItem(
              icon: Assets.assetsIconsProfile,
              label: '내 여권',
              onTap: () => shell.goBranch(2, initialLocation: shell.currentIndex == 2),
            )
          ],
        ),
      ),
    );
  }
}
