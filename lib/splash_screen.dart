import 'dart:async';

import 'package:flutter/material.dart';
import 'package:safeplace_app/pages/home_page.dart';
import 'package:safeplace_app/pages/logo_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // implement init state
    super.initState();
    startTime();
  }

  Widget build(BuildContext context) {
    return LogoScreen();
  }

  startTime() async {
    var duration = new Duration(seconds: 5);
    return new Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (BuildContext context) => HomePage()));
  }
}
