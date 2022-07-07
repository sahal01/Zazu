import 'package:flutter/material.dart';

import '../styles/Styles.dart';

class ProductViewimage extends StatelessWidget {
  ProductViewimage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: white,
        appBar: AppBar(
          centerTitle: false,
          automaticallyImplyLeading: true,
          backgroundColor: white,
          leading: const BackButton(
            color: Colors.black,
          ),
          title: Text(
            'Product Details',
            style: Styles()
                .normalS(fontW: FontWeight.normal, fontS: 22, color: black),
          ),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(50.0),
            child: Image.asset('assets/images/img_2.png', fit: BoxFit.cover),
          ),
        ));
  }
}
