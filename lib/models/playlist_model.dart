import 'package:music_player/models/song_model.dart';

class Playlist {
  final String title;
  final List<Song> songs;
  final String imageUrl;

  Playlist({required this.title, required this.songs, required this.imageUrl});

  static List<Playlist> playlists = [
    Playlist(
      title: 'Lo-Fi Playlist',
      songs: Song.songs,
      imageUrl: "assets/images/1.jpg",
    ),
    Playlist(
      title: "Rock and Roll",
      songs: Song.songs,
      imageUrl: "assets/images/2.jpg",
    ),
    Playlist(
      title: 'Hype Playlist',
      songs: Song.songs,
      imageUrl: "assets/images/3.jpg",
    )
  ];
}
