import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NaviState extends StatefulWidget {
  const NaviState({super.key});

  @override
  State<NaviState> createState() => _NaviStateState();
}

class _NaviStateState extends State<NaviState> {
  final screens = [
    const Center(
      child: Text("Home"),
    ),
    const Center(
      child: Text("Search"),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: const [
          BottomNavigationBarItem(
              icon: FaIcon(CupertinoIcons.home), label: 'home'),
          BottomNavigationBarItem(
              icon: FaIcon(CupertinoIcons.search), label: 'Search'),
        ],
      ),
      tabBuilder: (context, index) => screens[index],
    );
  }
}
