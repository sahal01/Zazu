import 'package:flutter/material.dart';

import '../styles/Styles.dart';

class Button {
  button({required Function action, required String txt}) {
    return FlatButton(
        color: primary1,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
        child: Text(
          txt,
          style: Styles()
              .normalS(fontW: FontWeight.normal, fontS: 15, color: black),
        ),
        onPressed: () {
          action();
        });
  }
}
