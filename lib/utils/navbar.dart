import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:google_fonts/google_fonts.dart';
import '../screens/albums.dart';
import '../screens/home.dart';
import '../screens/library.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _currentIndex = 0;
  static final List<Widget> _widgetOptions = <Widget>[
    Home(),
    Albums(),
    Library(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: const Icon(
          CupertinoIcons.music_note_2,
          color: Colors.white,
        ),
        title: "Music Player"
            .text
            .textStyle(TextStyle(
              fontFamily: GoogleFonts.oxanium().fontFamily,
              color: Colors.white,
            ))
            .xl2
            .make(),
        backgroundColor: Colors.black,
      ),
      bottomNavigationBar: NavigationBar(
        backgroundColor: Colors.black,
        labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
        elevation: 8,
        onDestinationSelected: (index) {
          setState(() {
            _widgetOptions[_currentIndex];
            _currentIndex = index;
          });
        },
        selectedIndex: _currentIndex,
        destinations: const [
          NavigationDestination(
              icon: Icon(
                FluentSystemIcons.ic_fluent_home_regular,
                color: Colors.white,
              ),
              selectedIcon: Icon(
                FluentSystemIcons.ic_fluent_home_filled,
                color: Colors.black,
              ),
              label: "Home"),
          NavigationDestination(
              icon: Icon(
                CupertinoIcons.music_albums,
                color: Colors.white,
              ),
              selectedIcon: Icon(
                CupertinoIcons.music_albums_fill,
                color: Colors.black,
              ),
              label: "Albums"),
          NavigationDestination(
              icon: Icon(
                Icons.library_music_outlined,
                color: Colors.white,
              ),
              selectedIcon: Icon(
                Icons.library_music,
                color: Colors.black,
              ),
              label: "Library"),
        ],
      ),
    );
  }
}
