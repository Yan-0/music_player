import 'package:flutter/material.dart';

class SongScreen extends StatelessWidget {
  const SongScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [Icon(Icons.abc_sharp), Icon(Icons.music_note)],
    );
  }
}
