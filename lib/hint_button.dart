import 'package:flutter/material.dart';

class HintButton extends StatefulWidget {
  final Function onUseHint;
  final int hintsLeft;

  HintButton({required this.onUseHint, required this.hintsLeft});

  @override
  _HintButtonState createState() => _HintButtonState();
}

class _HintButtonState extends State<HintButton> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: widget.hintsLeft > 0 ? widget.onUseHint as void Function()? : null,
          child: Text('Hint (${widget.hintsLeft})'),
        ),
        if (widget.hintsLeft == 0)
          TextButton(
            onPressed: () {
              // Simulate showing reward ad
              showDialog(
                context: context,
                builder: (_) => AlertDialog(
                  title: Text("Watch Ad"),
                  content: Text("Watch ad to get +3 hints"),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("Ad watched! +3 hints")),
                        );
                      },
                      child: Text("Play Ad"),
                    ),
                  ],
                ),
              );
            },
            child: Text("Watch Ad for Hints"),
          ),
      ],
    );
  }
}
