import 'package:flutter/material.dart';

class Rectangles {
  rectangles({required MaterialColor clr}) {
    return InkWell(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () {},
      child: DecoratedBox(
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          border: Border.all(width: 9.0, color: clr),
        ),
      ),
    );
  }
}
