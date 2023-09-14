import 'dart:async';

import 'package:flutter/material.dart';
import 'package:green/page2.dart';

class page1 extends StatefulWidget {
  const page1({super.key});

  @override
  State<page1> createState() => _page1State();
}

class _page1State extends State<page1> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => page2())));
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(hexColor("#447055")),
      body: Center(
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 80),
              child: Text("Go",
                  style: TextStyle(
                      color: Color(hexColor("#F5F5F5")),
                      fontSize: 64,
                      fontWeight: FontWeight.w300)),
            ),
            Text(
              "Green",
              style: TextStyle(
                  color: Color(hexColor("#99DAB3")),
                  fontSize: 64,
                  fontWeight: FontWeight.w400),
            )
          ],
        ),
      ),
    );
  }
}

int hexColor(String color) {
  //adding prefix
  String newColor = '0xff' + color;
  //removing # sign
  newColor = newColor.replaceAll('#', '');
  //converting it to the integer
  int finalColor = int.parse(newColor);
  return finalColor;
}
