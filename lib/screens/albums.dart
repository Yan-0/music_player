import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Albums extends StatelessWidget {
  const Albums({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [Icon(Icons.abc_sharp), Icon(Icons.music_note)],
    );
  }
}
