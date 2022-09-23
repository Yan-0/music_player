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
      imageUrl: "assets/images/lofi.jfif",
    ),
    Playlist(
      title: "Rock and Roll Playlist",
      songs: Song.songs,
      imageUrl: "assets/images/rNr.jpg",
    ),
    Playlist(
      title: 'Hype Playlist',
      songs: Song.songs,
      imageUrl: "assets/images/hype.jpg",
    )
  ];
}
