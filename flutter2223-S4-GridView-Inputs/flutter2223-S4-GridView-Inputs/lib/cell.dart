import 'package:flutter/material.dart';

import 'game.dart';

class Cell extends StatelessWidget {
  //var
  final Game mGame;

  const Cell(this.mGame, {super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(right:30.0),
              child: IconButton(
                iconSize: 46, icon: Icon(Icons.restore_from_trash), onPressed: () {  },
              ),
            ),
            Image.asset(
              "Assets/${mGame.image}",
              width: 180,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    mGame.title,
                    style: const TextStyle(color: Colors.black),
                  ),
                  Text(
                    "${mGame.price.floor().toString()} TND",
                    style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
