import 'package:flutter/material.dart';
import '../coin_manager.dart';
import '../reward_ui.dart';

class CoinButton extends StatefulWidget {
  @override
  _CoinButtonState createState() => _CoinButtonState();
}

class _CoinButtonState extends State<CoinButton> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Coins: ${CoinManager.getCoinCount()}"),
        ElevatedButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (_) => RewardUI(
                onReward: () {
                  setState(() {
                    CoinManager.addCoins(100);
                  });
                },
              ),
            );
          },
          child: Text("Watch Ad & Get 100 Coins"),
        ),
      ],
    );
  }
}
