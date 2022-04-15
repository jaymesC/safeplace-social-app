import 'package:flutter/material.dart';
import 'package:safeplace_app/pages/logo_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: LogoScreen());
  }
}
