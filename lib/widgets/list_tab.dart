import 'package:flutter/material.dart';

class ListTab extends StatelessWidget {
  final String image;
  final String title;
  final String text;

  const ListTab(
      {Key? key, required this.image, required this.title, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15, left: 15),
      width: 300,
      height: 60,
      decoration: BoxDecoration(
          color: Colors.red, borderRadius: BorderRadius.circular(20)),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image(image: AssetImage(image)),
          Container(
            width: 180,
            child: Column(
              children: [
                SizedBox(height: 5),
                Text(title),
                SizedBox(height: 5),
                Text(text),
              ],
            ),
          )
        ],
      ),
    );
  }
}
