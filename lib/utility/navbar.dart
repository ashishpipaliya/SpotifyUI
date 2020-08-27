import 'package:flamera/pages/homepage.dart';
import 'package:flutter/material.dart';
import 'package:flamera/constants.dart';
import 'package:flamera/pages/premium.dart';
import 'package:flamera/pages/search_page.dart';
import 'package:flamera/pages/your_library.dart';
import 'package:flutter_icons/flutter_icons.dart';

int currentIndex = 1;

List<Widget> tabs = [
  HomePage(),
  SearchPage(),
  YourLibrary(),
  Premium(),
];

class NavBar extends StatefulWidget {
  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0.0,
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
        backgroundColor: kNavColor,
        items: [
          BottomNavigationBarItem(
            icon: Icon(FontAwesome.home, color: Colors.white30),
            activeIcon: Icon(FontAwesome.home, color: Colors.white),
            title: Text("Home", style: kNavTextStyle),
            backgroundColor: kNavColor,
          ),
          BottomNavigationBarItem(
              icon: Icon(FontAwesome.search, color: Colors.white30),
              activeIcon: Icon(FontAwesome.search, color: Colors.white),
              title: Text("Search", style: kNavTextStyle),
              backgroundColor: kNavColor),
          BottomNavigationBarItem(
              icon: Icon(FontAwesome.linode, color: Colors.white30),
              activeIcon: Icon(FontAwesome.linode, color: Colors.white),
              title: Text("Your Library", style: kNavTextStyle),
              backgroundColor: kNavColor),
          BottomNavigationBarItem(
              icon: Icon(FontAwesome.spotify, color: Colors.white30),
              activeIcon: Icon(FontAwesome.spotify, color: Colors.white),
              title: Text("Premium", style: kNavTextStyle),
              backgroundColor: kNavColor)
        ],
        onTap: (value) => setState(() => currentIndex = value),
      ),
    );
  }
}

const kNavTextStyle = TextStyle(color: Colors.white, fontSize: 12);
