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
        onTap: onTap,
        currentIndex:currentIndex,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.deepPurple.withOpacity(0.8),
        elevation: 0,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled)),
          BottomNavigationBarItem(icon: Icon(Icons.people_outline_outlined)),
          BottomNavigationBarItem(icon: Icon(Icons.home_filled)),
          BottomNavigationBarItem(icon: Icon(Icons.home_filled)),
          BottomNavigationBarItem(icon: Icon(Icons.home_filled)),
        ],



      ),
    );
  }
}
