import 'package:flutter/material.dart';
import 'package:music_player/screens/albums.dart';
import 'package:music_player/screens/home.dart';
import 'package:music_player/screens/library.dart';
import 'package:music_player/utils/routes.dart';

void main() {
  runApp(const MusicPlayer());
}

class MusicPlayer extends StatelessWidget {
  const MusicPlayer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        navigationBarTheme: NavigationBarThemeData(
          indicatorColor: Colors.white,
          labelTextStyle:
              MaterialStateProperty.all(TextStyle(color: Colors.white)),
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
            selectedLabelStyle: TextStyle(color: Colors.white),
            unselectedLabelStyle: TextStyle(color: Colors.white)),
        useMaterial3: true,
      ),
      initialRoute: MyRoutes.homeRoute,
      routes: {
        MyRoutes.homeRoute: (context) => const Home(),
        MyRoutes.albumsRoute: (context) => const Albums(),
        MyRoutes.libraryRoute: (context) => const Library(),
      },
    );
  }
}
