import 'package:flutter/material.dart';
import 'package:spotify_clone/src/pages/home/home.dart';
import 'package:spotify_clone/src/pages/library.dart';
import 'package:spotify_clone/src/pages/search.dart';

class BottomTabBar extends StatefulWidget {
  const BottomTabBar({super.key});

  @override
  State<BottomTabBar> createState() => _BottomTabBarState();
}

class _BottomTabBarState extends State<BottomTabBar> {
  int _selectedTab = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedTab,
          onTap: (index) {
            setState(() {
              this._selectedTab = index;
            });
          },
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_filled), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
            BottomNavigationBarItem(
                icon: Icon(Icons.library_music_rounded), label: "Your Library"),
          ]),
      body: Stack(
        children: [
          renderTabBar(0, HomePage()),
          renderTabBar(1, SearchPage()),
          renderTabBar(2, LibraryPage())
        ],
      ),
    );
  }

  Widget renderTabBar(int tabIndex, Widget page) {
    return IgnorePointer(
      ignoring: _selectedTab != tabIndex,
      child: Opacity(
        opacity: _selectedTab == tabIndex ? 1 : 0,
        child: page,
      ),
    );
  }
}
