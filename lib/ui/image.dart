import 'package:flutter/material.dart';

import 'package:flutter_minotaur_dungeon/data/image_data.dart';

class GameImage extends StatefulWidget {
  const GameImage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _GameImageState();
  }
}

class _GameImageState extends State<GameImage> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 6,
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Image.network(
          imageUrlNow,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
