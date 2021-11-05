import 'package:flutter/material.dart';

import 'package:flutter_minotaur_dungeon/data/description_data.dart';

class GameDescription extends StatefulWidget {
  const GameDescription({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _GameDescriptionState();
  }
}

class _GameDescriptionState extends State<GameDescription> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Description:',
              style: TextStyle(fontSize: 16),
            ),
            Text(
              textNow,
              style: const TextStyle(fontSize: 20),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
