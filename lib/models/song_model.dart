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
      url: 'assets/music/24kGoldn - Mood Remix.m4a',
      coverUrl: "assets/images/1.jpg",
      description: 'Mood Remix By 24kGoldn',
    ),
    Song(
      title: "It's You",
      url: "assets/music/Ali Gatie - It's You.m4a",
      coverUrl: "assets/images/2.jpg",
      description: "It's You By Ali Gatie",
    ),
    Song(
      title: 'Sing Me To Sleep',
      url: 'assets/music/Alan Walker - Sing me to sleep.m4a',
      coverUrl: "assets/images/3.jpg",
      description: 'Sing Me To Sleep By Alan Walker',
    )
  ];
}
