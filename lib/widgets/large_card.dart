import 'package:flutter/material.dart';

class LargeCard extends StatelessWidget {
  const LargeCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        
        width: 160,
        height: 110,
        decoration: BoxDecoration(
          color: Colors.black,
        ));
  }
}
