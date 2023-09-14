import 'package:flutter/material.dart';
import 'package:green/page1.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    home: page1(),
    debugShowCheckedModeBanner: false,
  ));
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
