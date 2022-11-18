import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'GameData.dart';

class cardView extends StatelessWidget {
  final GameData game;
  const cardView({
    Key? key,
    required this.game,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.fromLTRB(0, 10, 20, 10),
            child: Image.asset(
              game.image,
              width: 200,
              height: 100,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                game.title,
                style: const TextStyle(fontSize: 18),
              ),
            ],
          )
        ],
      ),
    );
  }
}