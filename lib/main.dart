import 'package:flutter/material.dart';

import 'package:flutter_minotaur_dungeon/data/description_data.dart';
import 'package:flutter_minotaur_dungeon/data/image_data.dart';
import 'package:flutter_minotaur_dungeon/data/data_functions.dart';

import 'package:flutter_minotaur_dungeon/ui/description.dart';
import 'package:flutter_minotaur_dungeon/ui/image.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Minotaur Dungeon',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const GameMainPage(),
    );
  }
}

class GameMainPage extends StatefulWidget {
  const GameMainPage({Key? key}) : super(key: key);

  @override
  State<GameMainPage> createState() => _GameMainPageState();
}

class _GameMainPageState extends State<GameMainPage> {
  void onPressedNorth() {
    setState(() {
      if (descriptionList.isNotEmpty) {
        textNow = getData(descriptionList);
        descriptionList.remove(textNow);
        imageUrlNow = getData(imagesUrl);
        imagesUrl.remove(imageUrlNow);
        const snackBar = SnackBar(
          content: Text('You opened NORTH door'),
          duration: Duration(seconds: 1),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      } else {
        textNow = winnerText;
        imageUrlNow = winnerImage;
      }
    });
  }

  void onPressedWest() {
    setState(() {
      if (descriptionList.isNotEmpty) {
        textNow = getData(descriptionList);
        descriptionList.remove(textNow);
        imageUrlNow = getData(imagesUrl);
        imagesUrl.remove(imageUrlNow);
        const snackBar = SnackBar(
          content: Text('You opened WEST door'),
          duration: Duration(seconds: 1),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      } else {
        textNow = winnerText;
        imageUrlNow = winnerImage;
      }
    });
  }

  void onPressedEast() {
    setState(() {
      if (descriptionList.isNotEmpty) {
        textNow = getData(descriptionList);
        descriptionList.remove(textNow);
        imageUrlNow = getData(imagesUrl);
        imagesUrl.remove(imageUrlNow);
        const snackBar = SnackBar(
          content: Text('You opened EAST door'),
          duration: Duration(seconds: 1),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      } else {
        textNow = winnerText;
        imageUrlNow = winnerImage;
      }
    });
  }

  void onPressedSouth() {
    setState(() {
      if (descriptionList.isNotEmpty) {
        textNow = getData(descriptionList);
        descriptionList.remove(textNow);
        imageUrlNow = getData(imagesUrl);
        imagesUrl.remove(imageUrlNow);
        const snackBar = SnackBar(
          content: Text('You opened SOUTH door'),
          duration: Duration(seconds: 1),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      } else {
        textNow = winnerText;
        imageUrlNow = winnerImage;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Minotaur Dungeon'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GameImage(),
          const Spacer(),
          GameDescription(),
          const Spacer(),
          Expanded(
            flex: 4,
            child: Column(
              children: [
                OutlinedButton(
                  onPressed: onPressedNorth,
                  child: const Text('N'),
                ),
                Row(
                  children: [
                    const Spacer(),
                    OutlinedButton(
                      onPressed: onPressedWest,
                      child: const Text('W'),
                    ),
                    const Spacer(),
                    OutlinedButton(
                      onPressed: onPressedEast,
                      child: const Text('E'),
                    ),
                    const Spacer(),
                  ],
                ),
                OutlinedButton(
                  onPressed: onPressedSouth,
                  child: const Text('S'),
                ),
              ],
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
