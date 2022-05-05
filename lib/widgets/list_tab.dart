import 'package:flutter/material.dart';

class ListTab extends StatelessWidget {
  final String image;
  final String title;
  final String text;
  final Color? color;

  const ListTab(
      {Key? key,
      required this.image,
      required this.title,
      required this.text,
      required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15, left: 15),
      width: 300,
      height: 70,
      decoration: BoxDecoration(
          color: Colors.red, borderRadius: BorderRadius.circular(20)),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image(image: AssetImage(image)),
          Container(
            width: 180,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 7),
                Text(title, style: TextStyle(color: color)),
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
