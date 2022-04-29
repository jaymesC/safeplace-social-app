import 'package:flutter/material.dart';
import 'package:safeplace_app/widgets/emoji_widget.dart';
import 'package:safeplace_app/widgets/feature_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    return Scaffold(
        body: Container(
      height: h,
      child: Column(
        children: [_headSection(), _featureSection()],
      ),
    ));
  }

  _headSection() {
    var list = [
      '😎',
      '😎',
      '😎',
      '😎',
      '😎',
      '😎',
    ];
    var feeling = ['Happy', 'Calm', 'Sad', 'Energetic', 'Anxious', 'Frisky'];

    return Container(
      padding: const EdgeInsets.only(top: 50, left: 30),
      height: 250,
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 67, 14, 182),
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(60))),
      child: Stack(
        children: [
          Column(
            children: [
              Stack(
                children: [
                  Icon(Icons.menu, color: Colors.white, size: 30),
                  Center(
                    child: Column(children: [
                      SizedBox(
                        // right: 0,
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
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold)),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  Row(
                    children: <Widget>[
                      for (var item in list)
                        EmojiWidget(
                          emoji: item,
                        ),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  for (var item in feeling)
                    Container(
                        padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                        margin: EdgeInsets.only(right: 23),
                        child: Text(item,
                            style:
                                TextStyle(color: Colors.white, fontSize: 12)))
                ],
              )
            ],
          ),
        ],
      ),
    );
  }

  _featureSection() {
    return Container(
      padding: const EdgeInsets.only(left: 35, top: 10),
      height: 200,
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Features for you',
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.black.withOpacity(0.7))),
              SizedBox(height: 10),
              FeatureCard(),
              SizedBox(height: 10),
              Text('Peer Meetups',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black.withOpacity(0.5))),
              SizedBox(height: 5),
              Text('Join and grow in a community',
                  style: TextStyle(
                      fontSize: 12,
                      // fontWeight: FontWeight.bold,
                      color: Colors.black.withOpacity(0.6))),
            ],
          ),
        ],
      ),
    );
  }
}
