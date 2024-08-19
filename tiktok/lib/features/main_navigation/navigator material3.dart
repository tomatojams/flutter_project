import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
      bottomNavigationBar: NavigationBar(
        labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
        backgroundColor: const Color.fromARGB(255, 181, 199, 207),
        selectedIndex: _selectedIndex,
        onDestinationSelected: _onTab,
        destinations: const [
          NavigationDestination(
            icon: FaIcon(
              FontAwesomeIcons.house,
              color: Color.fromARGB(255, 255, 255, 255),
            ),
            label: 'Home',
          ),
          NavigationDestination(
              icon: FaIcon(
                FontAwesomeIcons.magnifyingGlass,
                color: Colors.white,
              ),
              label: 'Search')
        ],
      ),
    );
  }
}
