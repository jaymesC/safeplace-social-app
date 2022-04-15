import 'package:flutter/material.dart';

class LogoScreen extends StatelessWidget {
  const LogoScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      background:
      body: Center(
        child: const Text('SAFEPLACE', style: TextStyle(fontSize: 24))
      ),
    );
  }
}