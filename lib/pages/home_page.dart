import 'package:flutter/material.dart';

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
          Row(
            // crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.menu, color: Colors.white, size: 35),
              Expanded(
                child: Center(
                  child: Column(children: [
                    Text(
                      'SAFEPLACE',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    Image.asset(
                      'images/logo.png',
                      height: 30,
                    )
                  ]),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
