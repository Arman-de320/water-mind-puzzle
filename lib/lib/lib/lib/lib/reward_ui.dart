import 'package:flutter/material.dart';
import 'coin_manager.dart';

class RewardUI extends StatelessWidget {
  final String type; // "hint" or "coin"
  final bool internetAvailable;

  RewardUI({required this.type, required this.internetAvailable});

  @override
  Widget build(BuildContext context) {
    if (!internetAvailable) {
      return AlertDialog(
        title: Text("Connection Error"),
        content: Text("Check your internet connection."),
        actions: [
          TextButton(
            child: Text("OK"),
            onPressed: () => Navigator.of(context).pop(),
          )
        ],
      );
    }

    return AlertDialog(
      title: Text("Watch Ad to Get ${type == 'hint' ? "3 Hints" : "100 Coins"}"),
      content: Text("Click the button below to watch an ad."),
      actions: [
        TextButton(
          child: Text("Watch Ad"),
          onPressed: () {
            Navigator.of(context).pop();
            if (type == "hint") {
              // Give 3 hints
              ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("3 Hints Added (simulated)")));
            } else {
              // Give 100 coins
              CoinManager.addRewardCoins(100);
              ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("100 Coins Added (simulated)")));
            }
          },
        )
      ],
    );
  }
}
