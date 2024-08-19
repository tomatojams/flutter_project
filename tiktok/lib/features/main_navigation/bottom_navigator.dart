import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tiktok/features/main_navigation/stf_screen.dart';

class NaviState extends StatefulWidget {
  const NaviState({super.key});

  @override
  State<NaviState> createState() => _NaviStateState();
}

class _NaviStateState extends State<NaviState> {
  int _selectedIndex = 0;

  final screens = [
    const Center(
      child: Text("Home"),
    ),
    const Center(
      child: Text("Search"),
    ),
    const Center(
      child: StfScreen(),
    ),
    const Center(
      child: Text("Search"),
    ),
    const Center(
      child: Text("Search"),
    ),
  ];

  void _onTab(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        onTap: _onTab, //List items의 index인 int 전달은 자동으로 해줌
        currentIndex: _selectedIndex,
        selectedItemColor: Theme.of(context).primaryColor,
        unselectedItemColor: Theme.of(context).cardColor,
        items: const [
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.house),
            label: "Home",
            tooltip: "What r u",
            backgroundColor: Colors.cyan,
          ),
          BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.magnifyingGlass),
              label: "Search",
              tooltip: "Whatever you want",
              backgroundColor: Colors.lime),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.house),
            label: "Home",
            tooltip: "What r u",
            backgroundColor: Colors.pink,
          ),
          BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.magnifyingGlass),
              label: "Search",
              tooltip: "Whatever you want",
              backgroundColor: Colors.blue),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.house),
            label: "Home",
            tooltip: "What r u",
            backgroundColor: Colors.amber,
          ),
        ],
      ),
    );
  }
}
