import 'package:flutter/material.dart';

class LargeCard extends StatelessWidget {
  final String heading;
  final String description;
  final String buttonText;
  final Color? textColor;
  final Color? boxColor;

  const LargeCard(
      {Key? key,
      required this.heading,
      required this.description,
      required this.buttonText,
      this.textColor = Colors.white,
      this.boxColor = Colors.white
      
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 0),
      width: 170,
      height: 110,
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 17, 17, 171),
          borderRadius: BorderRadius.circular(15)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(heading, style: TextStyle(fontSize: 16, color: textColor)),
          SizedBox(height: 5),
          Text(description, style: TextStyle(fontSize: 12, color: textColor)),
          Container(
            width: 100,
            height: 25,
            margin: const EdgeInsets.only(top: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Center(child: Text(buttonText)),
          )
        ],
      ),
    );
  }
}
