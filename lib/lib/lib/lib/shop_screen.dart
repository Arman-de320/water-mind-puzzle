import 'package:flutter/material.dart';
import 'coin_manager.dart';

class ShopScreen extends StatefulWidget {
  @override
  _ShopScreenState createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> {
  List<Map<String, dynamic>> bottles = [
    {"name": "Classic", "unlocked": true, "cost": 0},
    {"name": "Glassy", "unlocked": false, "cost": 150},
    {"name": "Neon", "unlocked": false, "cost": 200},
    {"name": "Gold", "unlocked": false, "cost": 250},
  ];

  void unlockBottle(int index) {
    int cost = bottles[index]["cost"];
    bool unlocked = bottles[index]["unlocked"];

    if (!unlocked && CoinManager.spendCoins(cost)) {
      setState(() {
        bottles[index]["unlocked"] = true;
      });
    } else {
      // Not enough coins
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Not enough coins")),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Bottle Shop")),
      body: Column(
        children: [
          Text("Coins: ${CoinManager.coins}", style: TextStyle(fontSize: 20)),
          Expanded(
            child: ListView.builder(
              itemCount: bottles.length,
              itemBuilder: (context, index) {
                final bottle = bottles[index];
                return ListTile(
                  title: Text(bottle["name"]),
                  subtitle: Text(
                      bottle["unlocked"] ? "Unlocked" : "Cost: ${bottle["cost"]}"),
                  trailing: ElevatedButton(
                    onPressed: () => unlockBottle(index),
                    child: Text(bottle["unlocked"] ? "Selected" : "Unlock"),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
