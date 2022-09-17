import 'package:flutter/material.dart';
import 'package:music_player/screens/song_screen.dart';
import 'package:music_player/screens/home.dart';
import 'package:music_player/screens/playlist_screen.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MusicPlayer());
}

class MusicPlayer extends StatelessWidget {
  const MusicPlayer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: Theme.of(context).textTheme.apply(
              bodyColor: Colors.white,
              displayColor: Colors.white,
            ),
      ),
      home: const Home(),
      getPages: [
        GetPage(name: '/', page: () => const Home()),
        GetPage(name: '/song', page: () => const SongScreen()),
        GetPage(name: '/playlist', page: () => const PlaylistScreen()),
      ],
    );
  }
}
