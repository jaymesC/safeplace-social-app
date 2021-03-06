import 'package:flutter/material.dart';
import 'package:safeplace_app/widgets/emoji_widget.dart';
import 'package:safeplace_app/widgets/feature_card.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:safeplace_app/widgets/large_card.dart';
import 'package:safeplace_app/widgets/list_tab.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          height: h,
          child: Column(
            children: [
              _headSection(),
              _featureSection(),
              _cardSection(),
              _listTabSection()
            ],
          ),
        ));
  }

  _headSection() {
    var list = [
      '😀',
      '😊',
      '🙁',
      '🥳',
      '😮',
      '😤',
    ];
    var feeling = ['Happy', 'Calm', 'Sad', 'Energetic', 'Anxious', 'Frisky'];

    return Container(
      padding: const EdgeInsets.only(top: 35, left: 30),
      height: 210,
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
                height: 5,
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
                height: 10,
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
    final List<String> features = <String>[
      'Peer Meetups',
      'Mood Boosters',
      'Calming'
    ];
    final List<String> text = <String>[
      'Join and grow in a community',
      'Boost your mood with excercise',
      'Listen to calm & soothen songs'
    ];
    final List<IconData> icons = <IconData>[
      Icons.access_time_rounded,
      Icons.access_alarm_outlined,
      Icons.account_balance_wallet_outlined,
    ];
    final List<Color> colors = <Color>[
      Colors.yellow,
      Colors.red.withOpacity(0.8),
      Color.fromARGB(255, 28, 109, 202),
    ];

    return Container(
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Text('Features for you',
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Colors.black.withOpacity(0.7))),
              ),
              SizedBox(height: 5),
              Container(
                // margin: EdgeInsets.only(right: 20),
                height: 100,
                width: 410,
                child: ListView.builder(
                    padding: const EdgeInsets.only(
                      left: 25,
                    ),
                    itemCount: 3,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (_, index) {
                      return Container(
                        margin: const EdgeInsets.only(right: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            FeatureCard(
                              icon: icons[index],
                              backgroundColor: colors[index],
                            ),
                            SizedBox(height: 5),
                            Text(features[index],
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black.withOpacity(0.7))),
                            SizedBox(height: 5),
                            Text(text[index],
                                style: TextStyle(
                                    fontSize: 11.3,
                                    // fontWeight: FontWeight.bold,
                                    color: Colors.black.withOpacity(0.8))),
                            SizedBox(
                              width: 20,
                            ),
                          ],
                        ),
                      );
                    }),
              )
            ],
          ),
        ],
      ),
    );
  }

  _cardSection() {
    return Padding(
      padding: const EdgeInsets.only(left: 15, top: 10, bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          LargeCard(
            heading: 'Make a new friend',
            description: 'No man is an island. Meet new people',
            buttonText: 'Say Hello',
          ),
          LargeCard(
            heading: 'Positive Activities',
            description: 'Be open to positive exercises, dive into the new!',
            buttonText: 'Take a ride',
          ),
        ],
      ),
    );
  }

  _listTabSection() {
    final List<String> images = <String>[
      'images/image1.PNG',
      'images/image2.PNG',
      'images/image3.PNG'
    ];
    final List<String> titles = <String>[
      "See a Therapist",
      "No judgement",
      "Mood Journal"
    ];
    final List<String> texts = <String>[
      "Need an experienced mentor to talk to? We've got you covered for FREE!",
      "Here no one is a judge, feel free to speak, join a community!",
      "Your little dairy, Your new best friend, keep a record of your daily progress."
    ];

    final List<Color> colors = <Color>[
      Color.fromARGB(255, 216, 202, 68),
      Colors.red.withOpacity(0.8),
      Color.fromARGB(255, 27, 53, 99).withOpacity(0.8),
    ];
    return Container(
      height: double.infinity,
      width: 370,
      child: ListView.builder(
          itemCount: 3,
          itemBuilder: (_, index) {
            return ListTab(
              image: images[index],
              title: titles[index],
              color: colors[index],
              text: texts[index],
            );
          }),
    );
  }
}
