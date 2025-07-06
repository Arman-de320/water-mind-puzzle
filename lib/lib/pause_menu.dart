import 'package:flutter/material.dart';

class PauseMenu extends StatelessWidget {
  final VoidCallback onResume;
  final VoidCallback onRestart;
  final VoidCallback onMainMenu;

  PauseMenu({
    required this.onResume,
    required this.onRestart,
    required this.onMainMenu,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Game Paused'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ElevatedButton(onPressed: onResume, child: Text('Resume')),
          ElevatedButton(onPressed: onRestart, child: Text('Restart')),
          ElevatedButton(onPressed: onMainMenu, child: Text('Main Menu')),
        ],
      ),
    );
  }
}
