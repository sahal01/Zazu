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
Color primary1 = const Color(0xFFF9D2D2);
Color searchbtn = const Color(0xFF897ECD);
Color black = Colors.black;
Color white = Colors.white;
Color grey = const Color(0xFFBDBDBD);
Color yellw = const Color(0xFFF9F5D5);
