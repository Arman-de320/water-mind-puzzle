import 'package:flutter/material.dart';
import '../hint_manager.dart';
import '../reward_ui.dart';

class HintButton extends StatefulWidget {
  @override
  _HintButtonState createState() => _HintButtonState();
}

class _HintButtonState extends State<HintButton> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () {
            if (HintManager.useHint()) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text("Hint shown!")),
              );
            } else {
              showDialog(
                context: context,
                builder: (_) => RewardUI(
                  onReward: () {
                    setState(() {
                      HintManager.addHints(3);
                    });
                  },
                ),
              );
            }
          },
          child: Text("Hint (${HintManager.hintCount})"),
        ),
      ],
    );
  }
}
