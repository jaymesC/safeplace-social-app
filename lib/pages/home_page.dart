import 'package:flutter/material.dart';
import 'package:safeplace_app/widgets/emoji_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    return Scaffold(
        body: Container(
      height: h,
      child: Stack(
        children: [_headSection()],
      ),
    ));
  }

  _headSection() {
    return Container(
      padding: const EdgeInsets.only(top: 50, left: 10),
      height: 250,
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 67, 14, 182),
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(60))),
      child: Column(
        children: [
          Stack(
            // crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.menu, color: Colors.white, size: 30),
              Center(
                child: Column(children: [
                  Positioned(
                    right: 0,
                    child: Text(
                      'SAFEPLACE',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Image.asset(
                    'images/logo.png',
                    height: 30,
                  )
                ]),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text('How do you feel?',
                  style: TextStyle(color: Colors.white, fontSize: 16)),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [EmojiWidget(emoji: 'emoji')],
          )
        ],
      ),
    );
  }
}
