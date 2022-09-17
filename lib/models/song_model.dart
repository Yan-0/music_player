class Song {
  final String title;
  final String description;
  final String url;
  final String coverUrl;

  Song({
    required this.title,
    required this.description,
    required this.url,
    required this.coverUrl,
  });

  static List<Song> songs = [
    Song(
      title: 'Mood',
      description: '24kGoldn',
      url: 'assets/music/24kGoldn - Mood Remix.m4a',
      coverUrl: "assets/images/1.jpg",
    ),
    Song(
      title: "It's You",
      description: "Ali Gatie",
      url: "assets/music/Ali Gatie - It's You.m4a",
      coverUrl: "assets/images/2.jpg",
    ),
    Song(
      title: 'Sing Me To Sleep',
      description: 'Alan Walker',
      url: 'assets/music/Alan Walker - Sing me to sleep.m4a',
      coverUrl: "assets/images/3.jpg",
    )
  ];
}
