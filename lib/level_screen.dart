import 'package:flutter/material.dart';

class LevelScreen extends StatelessWidget {
  final int unlockedLevel;

  LevelScreen({this.unlockedLevel = 1});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select Level'),
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(16),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: 10000,
        itemBuilder: (context, index) {
          int level = index + 1;
          bool isLocked = level > unlockedLevel;

          return GestureDetector(
            onTap: isLocked
                ? null
                : () {
                    // Open the level
                  },
            child: Container(
              decoration: BoxDecoration(
                color: isLocked ? Colors.grey : Colors.greenAccent,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: Text(
                  isLocked ? '🔒' : '$level',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
