import 'dart:async';

import 'package:flutter/material.dart';

import '../Login/login.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Timer(
        const Duration(seconds: 3),
        () => Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (BuildContext context) => Login())));
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
            child: Image.asset(
          'assets/images/img.png',
          width: w / 3,
          height: 200,
          //fit: BoxFit.scaleDown,
        )));
  }
}
