import 'package:flutter/material.dart';

class Styles {
  normalS({
    required FontWeight fontW,
    required double fontS,
    required Color color,
  }) {
    return TextStyle(
      fontSize: fontS,
      fontWeight: fontW,
      color: color,
    );
  }
}

Color? primary1 = Colors.pink[100];
Color black = Colors.black;
Color white = Colors.white;
Color grey = const Color(0xFFBDBDBD);