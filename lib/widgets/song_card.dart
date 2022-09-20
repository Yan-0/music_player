import 'package:flutter/material.dart';
import 'package:music_player/models/song_model.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:get/get.dart';

class SongCard extends StatelessWidget {
  const SongCard({
    Key? key,
    required this.song,
  }) : super(key: key);

  final Song song;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.toNamed('/song', arguments: song);
      },
      child: Container(
        margin: const EdgeInsets.only(right: 10),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              height: 300,
              width: MediaQuery.of(context).size.width * 0.45,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                image: DecorationImage(
                  image: AssetImage(
                    song.coverUrl,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width * 0.36,
              margin: const EdgeInsets.only(bottom: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: Colors.white.withOpacity(0.7),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          song.title,
                          style:
                              Theme.of(context).textTheme.bodyLarge!.copyWith(
                                    color: const Color.fromARGB(0, 2, 18, 46)
                                        .withOpacity(0.8),
                                    fontWeight: FontWeight.bold,
                                  ),
                        ).pOnly(bottom: 2),
                        Text(
                          song.description,
                          style:
                              Theme.of(context).textTheme.bodyLarge!.copyWith(
                                    color: Colors.blueGrey.shade600,
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                      ],
                    ),
                    const Icon(Icons.play_circle_outline, color: Colors.indigo),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
