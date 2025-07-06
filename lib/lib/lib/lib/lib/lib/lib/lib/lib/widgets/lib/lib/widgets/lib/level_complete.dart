import 'package:flutter/material.dart';
import 'coin_manager.dart';
import 'level_manager.dart';

class LevelComplete extends StatelessWidget {
  final int level;

  LevelComplete({required this.level});

  @override
  Widget build(BuildContext context) {
    int reward = 83 + ((level - 1) * 5);
    CoinManager.addCoins(reward);
    LevelManager.unlockNextLevel(level);

    return AlertDialog(
      title: Text("Level $level Complete!"),
      content: Text("You earned $reward coins!"),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text("OK"),
        )
      ],
    );
  }
}
