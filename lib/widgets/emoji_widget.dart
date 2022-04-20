import 'package:flutter/material.dart';

class EmojiWidget extends StatelessWidget {
  final String emoji;
  final String label;

  const EmojiWidget({Key? key, required this.emoji, required this.label})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.fromLTRB(8, 10, 8, 10),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
          child: Text(
            emoji,
            style: TextStyle(fontSize: 18),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(label, style: TextStyle(color: Colors.white))
      ],
    );
  }
}
