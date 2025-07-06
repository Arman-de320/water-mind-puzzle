import 'package:flutter/material.dart';
import '../bottle_manager.dart';
import '../coin_manager.dart';

class ShopScreen extends StatefulWidget {
  @override
  _ShopScreenState createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Bottle Shop")),
      body: ListView.builder(
        itemCount: BottleManager.bottles.length,
        itemBuilder: (context, index) {
          final bottle = BottleManager.bottles[index];
          return ListTile(
            leading: Image.asset(bottle.imagePath, width: 40),
            title: Text(bottle.name),
            subtitle: Text(bottle.unlocked ? "Unlocked" : "${bottle.price} Coins"),
            trailing: bottle.unlocked
                ? ElevatedButton(
                    onPressed: () {
                      BottleManager.selectBottle(bottle);
                      setState(() {});
                    },
                    child: Text("Select"),
                  )
                : ElevatedButton(
                    onPressed: () {
                      if (CoinManager.spendCoins(bottle.price)) {
                        BottleManager.unlockBottle(bottle);
                        setState(() {});
                      }
                    },
                    child: Text("Unlock"),
                  ),
          );
        },
      ),
    );
  }
}
