import 'package:flutter/material.dart';

class FeatureCard extends StatelessWidget {
  final IconData icon;
  final Color? iconColor;
  final Color backgroundColor;
  const FeatureCard(
      {Key? key, required this.icon, this.iconColor = Colors.white, required this.backgroundColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
      decoration: BoxDecoration(
          color: backgroundColor, borderRadius: BorderRadius.circular(10),),
      child: Icon(icon, color: iconColor),
    );
  }
}
