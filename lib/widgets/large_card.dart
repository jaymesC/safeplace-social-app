import 'package:flutter/material.dart';

class LargeCard extends StatelessWidget {
  final String heading;
  final String description;
  final String buttonText;

  const LargeCard({Key? key, required this.heading, required this.description, required this.buttonText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      height: 110,
      decoration: BoxDecoration(
          color: Colors.black, borderRadius: BorderRadius.circular(15)),
      child: Column(
        children: [],
      ),
    );
  }
}
