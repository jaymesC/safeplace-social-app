import 'package:flutter/material.dart';

class ListTab extends StatelessWidget {
  const ListTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15, left: 15),
      width: 300,
      height: 60,
      decoration: BoxDecoration(
          color: Colors.red, borderRadius: BorderRadius.circular(20)),
      child: Row(
        children: [],
      ),
    );
  }
}
