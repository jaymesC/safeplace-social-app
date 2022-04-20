import 'package:flutter/material.dart';
import 'package:safeplace_app/pages/home_page.dart';
import 'package:safeplace_app/pages/navpages/contactlist_page.dart';
import 'package:safeplace_app/pages/navpages/message_page.dart';
import 'package:safeplace_app/pages/navpages/mypage.dart';
import 'package:safeplace_app/pages/navpages/song_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List pages = [
    HomePage(),
    ContactList(),
    MessagePage(),
    MusicPage(),
    MyPage()
  ];

  int currentIndex = 0;

  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          onTap: onTap,
          currentIndex: currentIndex,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: Colors.deepPurple.withOpacity(0.8),
          unselectedItemColor: Colors.grey.withOpacity(0.9),
          elevation: 0,
          items: const [
            BottomNavigationBarItem(
                label: 'Home', icon: Icon(Icons.home_filled)),
            BottomNavigationBarItem(
                label: 'Add friends', icon: Icon(Icons.people)),
            BottomNavigationBarItem(
                label: 'Messages', icon: Icon(Icons.message_sharp)),
            BottomNavigationBarItem(
                label: 'Music', icon: Icon(Icons.music_note_sharp)),
            BottomNavigationBarItem(label: 'Profile', icon: Icon(Icons.person)),
          ]),
    );
  }
}
